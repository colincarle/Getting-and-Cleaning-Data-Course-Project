## Getting and Cleaning Data Course Project.

An analysis that tidies a data set.

The files in the repo are:

* data/UCI HAR Dataset - contains copies of the original readme and features file.
* CodeBook.md - a thorough description of the analysis and a list of the variables.
* tidySet.txt - a copy of the independent set output from run_analysis.R
* README.md - this file
* run_analysis.R - The R script that completes the data transformation

To simplify analysis, this repo contains only one R script to complete the analysis. The details are laid out in CodeBook.md; but the steps to transform the data are as follows:

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

Questions or comments can be directed to head.explode@gmail.com 
