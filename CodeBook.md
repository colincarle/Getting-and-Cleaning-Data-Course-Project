## Getting and Cleaning Data Course Project (Code Book)

Note that this file cites heavily the original README.txt and features\_info.txt text which have been preserved [here](https://github.com/colincarle/Getting-and-Cleaning-Data-Course-Project/blob/master/data/UCI%20HAR%20Dataset/README.txt) and [here](https://github.com/colincarle/Getting-and-Cleaning-Data-Course-Project/blob/master/data/UCI%20HAR%20Dataset/features_info.txt)

The run_analysis.R script in this repository is designed to process the raw data set from [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and transform the data therein to a tidy data set as follows:
* Merges the training set and the test set into one data set.
* Preserves only the data on the mean and standard deviation for each measurement.
* Converts the numeric activity codes into descriptive activity names in the data set.
* Labels the data set with descriptive variable names.
* When the analysis is complete, the script will output a second tidy, independent data set with the average of the individual variables for each activity and subject.

To complete the task, the following steps/transformations were followed:

1. Import the test/training data, labels(activity codes) and subject.
2. Import the activity and feature labels.
3. Attach the subject and activity codes to the data sets.
4. Merge the data sets with `rbind()`
5. Attach the feature labels to the merged data set.
6. Map the activity names to the activity code using `plyr::mapvalues()`.
7. Filter and keep only data columns that match `subject`, `activity`, `mean()` and `std()`. Columns that do not match these expressions are discarded. 
8. Clean the activity and feature labels with `gsub` and `grep`. Clean variable/label names are free of spaces; and special characers such as `-`, `()` and `_`. In addition, clean names will follow the format `firstSecondThird`.
9. The data is reduced to molten form via `melt()`, with id variables `subject` and `activity`. All remaining variables are considered measured variables.
10. The molten/tall data is then recast - and aggregated with `mean` - into its wide form via `dcast()`.
11. Finally this separate, aggregated data is written to a file called **_tidySet.txt_**.

Note that for this tidy data set, mean and standard deviation for measurements were interepreted as features that ended in `mean()` and `std()`. Measurements not matching this format, such as `meanFreq` or `gravityMean` were discarded.

The **Renamed Variables** and activity labels are listed below, and a description of the source features and their content is described below in the section labelled **Feature Selection**. This section has been copied and modified from the [source](https://github.com/colincarle/Getting-and-Cleaning-Data-Course-Project/blob/master/data/UCI%20HAR%20Dataset/features_info.txt) to correspond with this task.

### Renamed Variables
Varible Name                |Brief Description
----------------------------|----
subject                     | Subject (denoted as 1-30)
activity                    | Activity (Walking, WalkingUpstairs, WalkingDownstairs, Sitting, Standing, Laying)
tBodyAccMeanX               | Mean of source variable, see below.. 
tBodyAccMeanY               | Mean of source variable, see below. 
tBodyAccMeanZ               | Mean of source variable, see below. 
tBodyAccStdX                | Mean of source variable, see below. 
tBodyAccStdY                | Mean of source variable, see below. 
tBodyAccStdZ                | Mean of source variable, see below. 
tGravityAccMeanX            | Mean of source variable, see below.
tGravityAccMeanY            | Mean of source variable, see below.
tGravityAccMeanZ            | Mean of source variable, see below.
tGravityAccStdX             | Mean of source variable, see below.
tGravityAccStdY             | Mean of source variable, see below.
tGravityAccStdZ             | Mean of source variable, see below.
tBodyAccJerkMeanX           | Mean of source variable, see below.
tBodyAccJerkMeanY           | Mean of source variable, see below.
tBodyAccJerkMeanZ           | Mean of source variable, see below.
tBodyAccJerkStdX            | Mean of source variable, see below.
tBodyAccJerkStdY            | Mean of source variable, see below.
tBodyAccJerkStdZ            | Mean of source variable, see below.
tBodyGyroMeanX              | Mean of source variable, see below.
tBodyGyroMeanY              | Mean of source variable, see below.
tBodyGyroMeanZ              | Mean of source variable, see below.
tBodyGyroStdX               | Mean of source variable, see below.
tBodyGyroStdY               | Mean of source variable, see below.
tBodyGyroStdZ               | Mean of source variable, see below.
tBodyGyroJerkMeanX          | Mean of source variable, see below.
tBodyGyroJerkMeanY          | Mean of source variable, see below.
tBodyGyroJerkMeanZ          | Mean of source variable, see below.
tBodyGyroJerkStdX           | Mean of source variable, see below.
tBodyGyroJerkStdY           | Mean of source variable, see below.
tBodyGyroJerkStdZ           | Mean of source variable, see below.
tBodyAccMagMean             | Mean of source variable, see below.
tBodyAccMagStd              | Mean of source variable, see below.        
tGravityAccMagMean          | Mean of source variable, see below.
tGravityAccMagStd           | Mean of source variable, see below.
tBodyAccJerkMagMean         | Mean of source variable, see below.
tBodyAccJerkMagStd          | Mean of source variable, see below.
tBodyGyroMagMean            | Mean of source variable, see below.
tBodyGyroMagStd             | Mean of source variable, see below.
tBodyGyroJerkMagMean        | Mean of source variable, see below.
tBodyGyroJerkMagStd         | Mean of source variable, see below.
fBodyAccMeanX               | Mean of source variable, see below.  
fBodyAccMeanY               | Mean of source variable, see below.  
fBodyAccMeanZ               | Mean of source variable, see below.  
fBodyAccStdX                | Mean of source variable, see below.  
fBodyAccStdY                | Mean of source variable, see below.  
fBodyAccStdZ                | Mean of source variable, see below.  
fBodyAccJerkMeanX           | Mean of source variable, see below. 
fBodyAccJerkMeanY           | Mean of source variable, see below. 
fBodyAccJerkMeanZ           | Mean of source variable, see below. 
fBodyAccJerkStdX            | Mean of source variable, see below. 
fBodyAccJerkStdY            | Mean of source variable, see below. 
fBodyAccJerkStdZ            | Mean of source variable, see below. 
fBodyGyroMeanX              | Mean of source variable, see below. 
fBodyGyroMeanY              | Mean of source variable, see below. 
fBodyGyroMeanZ              | Mean of source variable, see below. 
fBodyGyroStdX               | Mean of source variable, see below. 
fBodyGyroStdY               | Mean of source variable, see below. 
fBodyGyroStdZ               | Mean of source variable, see below. 
fBodyAccMagMean             | Mean of source variable, see below. 
fBodyAccMagStd              | Mean of source variable, see below. 
fBodyBodyAccJerkMagMean     | Mean of source variable, see below. 
fBodyBodyAccJerkMagStd      | Mean of source variable, see below. 
fBodyBodyGyroMagMean        | Mean of source variable, see below. 
fBodyBodyGyroMagStd         | Mean of source variable, see below. 
fBodyBodyGyroJerkMagMean    | Mean of source variable, see below. 
fBodyBodyGyroJerkMagStd     | Mean of source variable, see below. 

[id1]:

###Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean(): Mean value
Std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

