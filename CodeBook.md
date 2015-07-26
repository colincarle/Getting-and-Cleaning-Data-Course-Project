Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Varible Name                | Time Domain Description
----------------------------| Time Domain -------------
subject                     | Time Domain Test 
activity                    | Time Domain
tBodyAccMeanX               | Time Domain
tBodyAccMeanY               | Time Domain
tBodyAccMeanZ               | Time Domain
tBodyAccStdX                | Time Domain
tBodyAccStdY                | Time Domain
tBodyAccStdZ                | Time Domain
tGravityAccMeanX            | Time Domain
tGravityAccMeanY            | Time Domain
tGravityAccMeanZ            | Time Domain
tGravityAccStdX             | Time Domain
tGravityAccStdY             | Time Domain
tGravityAccStdZ             | Time Domain
tBodyAccJerkMeanX           | Time Domain
tBodyAccJerkMeanY           | Time Domain
tBodyAccJerkMeanZ           | Time Domain
tBodyAccJerkStdX            | Time Domain
tBodyAccJerkStdY            | Time Domain
tBodyAccJerkStdZ            | Time Domain
tBodyGyroMeanX              | Time Domain
tBodyGyroMeanY              | Time Domain
tBodyGyroMeanZ              | Time Domain
tBodyGyroStdX               | Time Domain
tBodyGyroStdY               | Time Domain
tBodyGyroStdZ               | Time Domain
tBodyGyroJerkMeanX          | Time Domain
tBodyGyroJerkMeanY          | Time Domain
tBodyGyroJerkMeanZ          | Time Domain
tBodyGyroJerkStdX           | Time Domain
tBodyGyroJerkStdY           | Time Domain
tBodyGyroJerkStdZ           | Time Domain
tBodyAccMagMean             | Time Domain
tBodyAccMagStd              | Time Domain        
tGravityAccMagMean          | Time Domain
tGravityAccMagStd           | Time Domain
tBodyAccJerkMagMean         | Time Domain
tBodyAccJerkMagStd          | Time Domain
tBodyGyroMagMean            | Time Domain
tBodyGyroMagStd             | Time Domain
tBodyGyroJerkMagMean        | Time Domain
tBodyGyroJerkMagStd         | Time Domain
fBodyAccMeanX               | Time Domain
fBodyAccMeanY               | Time Domain
fBodyAccMeanZ               | Time Domain
fBodyAccStdX                | Time Domain
fBodyAccStdY                | Time Domain
fBodyAccStdZ                | Time Domain
fBodyAccJerkMeanX           | Time Domain
fBodyAccJerkMeanY           | Time Domain
fBodyAccJerkMeanZ           | Time Domain
fBodyAccJerkStdX            | Time Domain
fBodyAccJerkStdY            | Time Domain
fBodyAccJerkStdZ            | Time Domain
fBodyGyroMeanX              | Time Domain
fBodyGyroMeanY              | Time Domain
fBodyGyroMeanZ              | Time Domain
fBodyGyroStdX               | Time Domain
fBodyGyroStdY               | Time Domain
fBodyGyroStdZ               | Time Domain
fBodyAccMagMean             | Time Domain
fBodyAccMagStd              | Time Domain
fBodyBodyAccJerkMagMean     | Time Domain
fBodyBodyAccJerkMagStd      | Time Domain
fBodyBodyGyroMagMean        | Time Domain
fBodyBodyGyroMagStd         | Time Domain
fBodyBodyGyroJerkMagMean    | Time Domain
fBodyBodyGyroJerkMagStd     | Time Domain

