### Getting and Cleaning Data Course Project (Code Book)

The run_analysis.R script in this repository is designed to take the data set from (this link)[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] and transfrom 

Varible Name                | Brief Description
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

