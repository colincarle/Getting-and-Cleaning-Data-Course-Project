library(reshape2)

# Check to see whether the dataset exists, and if not; download it.
dataFile <- "./data/getdata-projectfiles-UCI HAR Dataset.zip"
if (!file.exists(dataFile))
{
    suppressWarnings(dir.create("./data"))
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, destfile = dataFile, method = 'curl')
}

# read the contents of the compressed file into a list. In lieu of extracting
# the contents of the compressed file, the list will serve as an index to the
dataFileContents <- unzip(dataFile, list = TRUE)

# extract the README.txt and features_info.txt
unzip(dataFile, dataFileContents[4, 1], exdir = './data')
unzip(dataFile, dataFileContents[3, 1], exdir = './data')

# read the training activity labels, subjects and data.
trainingLabels   <- read.table(unz(dataFile, dataFileContents[32, 1]),
                               stringsAsFactors = FALSE)
trainingSet      <- read.table(unz(dataFile, dataFileContents[31, 1]),
                               stringsAsFactors = FALSE)
trainingSubject  <- read.table(unz(dataFile, dataFileContents[30, 1]),
                               stringsAsFactors = FALSE)

# read the testing activity labels, subjects and data.
testingLabels    <- read.table(unz(dataFile, dataFileContents[18, 1]),
                               stringsAsFactors = FALSE)
testingSet       <- read.table(unz(dataFile, dataFileContents[17, 1]),
                               stringsAsFactors = FALSE)
testingSubject   <- read.table(unz(dataFile, dataFileContents[16, 1]),
                               stringsAsFactors = FALSE)

# read the activity names and feature labels
activityLabels   <- read.table(unz(dataFile, dataFileContents[1, 1]),
                               stringsAsFactors = FALSE)
featuresLabels   <- read.table(unz(dataFile, dataFileContents[2, 1]),
                               stringsAsFactors = FALSE)

# close any open connections
closeAllConnections()

# add the subject and activityCode columns to their respective datasets. The
# activityCode is stored as a factor
trainingSet$subject      <- trainingSubject$V1
trainingSet$activityCode <- as.factor(trainingLabels$V1)
testingSet$subject       <- testingSubject$V1
testingSet$activityCode  <- as.factor(testingLabels$V1)

# merge the testing and training datasets, convert the subject to a factor.
mergedSet         <- rbind(trainingSet, testingSet)
mergedSet$subject <- as.factor(mergedSet$subject)


# label the 'feature' variables
colnames(mergedSet)[1:561] <- featuresLabels$V2

# apply column names to activity labels, format the activity text, and map to
# their corresponding values in the mergedSet
activityLabels$V2 <- tolower(activityLabels$V2)
activityLabels$V2 <- gsub("(_.)", "\\U\\1", activityLabels$V2, perl = TRUE)
activityLabels$V2 <- gsub("_", "", activityLabels$V2)
colnames(activityLabels) <- c("activityCode", "activity")
mergedSet$activityCode   <- plyr::mapvalues(mergedSet$activityCode,
                                            from = c(activityLabels$activityCode),
                                            to = c(activityLabels$activity))
names(mergedSet)[names(mergedSet) == 'activityCode'] <- 'activity'


# create an index of the columns to be kept, and trim the dataset.
patterns   <- c("^subject$", "^activity$", "\\bmean()\\b", "\\bstd()\\b")
index      <- grep(paste(patterns, collapse = "|"), colnames(mergedSet))
trimmedSet <- mergedSet[index]
cleanNames <- gsub("(-.)", "\\U\\1", colnames(trimmedSet), perl = TRUE)
cleanNames <- gsub("-|\\(\\)", "", cleanNames)
colnames(trimmedSet) <- cleanNames

# (1) melt the trimmed data into a long set about id variables subject and activity.
# (2) calculate the mean and cast the melted data into a wide set similar to the
#     original input data
# (3) order the data by subject and then activity.
# (4) write the data to a file named tidySet.txt
meltedSet <- melt(trimmedSet, id.vars = c("subject", "activity"))
castedSet <- dcast(meltedSet, subject + activity ~ variable, mean)
tidySet   <- castedSet[order(castedSet$subject, castedSet$activity), ]
write.table(tidySet, file = "./tidySet.txt", row.names = FALSE)
