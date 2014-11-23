Codebook
========

Raw Data - Human Activity Recognition Using Smartphones Dataset Version 1.0
===========================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, 
LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and 
gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 
30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then
sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor 
acceleration signal, which has gravitational and body motion components, was separated using a Butterworth 
low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low 
frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector 
of features was obtained by calculating variables from the time and frequency domain. See 
'features_info.txt' for more details. 

For each record it is provided:

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. It's activity label. 
5. An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

1. 'README.txt'
2. 'features_info.txt': Shows information about the variables used on the feature vector.
3. 'features.txt': List of all features.
4. 'activity_labels.txt': Links the class labels with their activity name.
5. 'train/X_train.txt': Training set.
6. 'train/y_train.txt': Training labels.
7. 'test/X_test.txt': Test set.
8. 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

1. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window 
   sample. Its range is from 1 to 30. 
2. 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer
   X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies 
   for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

3. 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the 
   gravity from the total acceleration. 

4. 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for 
   each window sample. The units are radians/second. 

Notes: 

1. Features are normalized and bounded within [-1,1].
2. Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

Variables
=========

Raw Dataset | Tidy Dataset 
--- | --- 
activity	|				activity
subject		|				subject
tBodyAcc-mean()-X	|		timeBodyAccmeanX
tBodyAcc-mean()-Y	|		timeBodyAccmeanY
tBodyAcc-mean()-Z	|		timeBodyAccmeanZ
tBodyAcc-std()-X	|		timeBodyAccstdX
tBodyAcc-std()-Y	|		timeBodyAccstdY
tBodyAcc-std()-Z	|		timeBodyAccstdZ
tGravityAcc-mean()-X	|	timeGravityAccmeanX
tGravityAcc-mean()-Y	|	timeGravityAccmeanY
tGravityAcc-mean()-Z	|	timeGravityAccmeanZ
tGravityAcc-std()-X		|	timeGravityAccstdX
tGravityAcc-std()-Y		|	timeGravityAccstdY
tGravityAcc-std()-Z		|	timeGravityAccstdZ
tBodyAccJerk-mean()-X	|	timeBodyAccJerkmeanX
tBodyAccJerk-mean()-Y	|	timeBodyAccJerkmeanY
tBodyAccJerk-mean()-Z	|	timeBodyAccJerkmeanZ
tBodyAccJerk-std()-X	|	timeBodyAccJerkstdX
tBodyAccJerk-std()-Y	|	timeBodyAccJerkstdY
tBodyAccJerk-std()-Z	|	timeBodyAccJerkstdZ
tBodyGyro-mean()-X		|	timeBodyGyromeanX
tBodyGyro-mean()-Y		|	timeBodyGyromeanY
tBodyGyro-mean()-Z		|	timeBodyGyromeanZ
tBodyGyro-std()-X		|	timeBodyGyrostdX
tBodyGyro-std()-Y		|	timeBodyGyrostdY
tBodyGyro-std()-Z		|	timeBodyGyrostdZ
tBodyGyroJerk-mean()-X	|	timeBodyGyroJerkmeanX
tBodyGyroJerk-mean()-Y	|	timeBodyGyroJerkmeanY
tBodyGyroJerk-mean()-Z	|	timeBodyGyroJerkmeanZ
tBodyGyroJerk-std()-X	|	timeBodyGyroJerkstdX
tBodyGyroJerk-std()-Y	|	timeBodyGyroJerkstdY
tBodyGyroJerk-std()-Z	|	timeBodyGyroJerkstdZ
tBodyAccMag-mean()		|	timeBodyAccMagmean
tBodyAccMag-std()		|	timeBodyAccMagstd
tGravityAccMag-mean()	|	timeGravityAccMagmean
tGravityAccMag-std()	|	timeGravityAccMagstd
tBodyAccJerkMag-mean()	|	timeBodyAccJerkMagmean
tBodyAccJerkMag-std()	|	timeBodyAccJerkMagstd
tBodyGyroMag-mean()		|	timeBodyGyroMagmean
tBodyGyroMag-std()		|	timeBodyGyroMagstd
tBodyGyroJerkMag-mean()	|	timeBodyGyroJerkMagmean
tBodyGyroJerkMag-std()	|	timeBodyGyroJerkMagstd
fBodyAcc-mean()-X		|	frequencyBodyAccmeanX
fBodyAcc-mean()-Y		|	frequencyBodyAccmeanY
fBodyAcc-mean()-Z		|	frequencyBodyAccmeanZ
fBodyAcc-std()-X		|	frequencyBodyAccstdX
fBodyAcc-std()-Y		|	frequencyBodyAccstdY
fBodyAcc-std()-Z		|	frequencyBodyAccstdZ
fBodyAccJerk-mean()-X	|	frequencyBodyAccJerkmeanX
fBodyAccJerk-mean()-Y	|	frequencyBodyAccJerkmeanY
fBodyAccJerk-mean()-Z	|	frequencyBodyAccJerkmeanZ
fBodyAccJerk-std()-X	|	frequencyBodyAccJerkstdX
fBodyAccJerk-std()-Y	|	frequencyBodyAccJerkstdY
fBodyAccJerk-std()-Z	|	frequencyBodyAccJerkstdZ
fBodyGyro-mean()-X		|	frequencyBodyGyromeanX
fBodyGyro-mean()-Y		|	frequencyBodyGyromeanY
fBodyGyro-mean()-Z		|	frequencyBodyGyromeanZ
fBodyGyro-std()-X		|	frequencyBodyGyrostdX
fBodyGyro-std()-Y		|	frequencyBodyGyrostdY
fBodyGyro-std()-Z		|	frequencyBodyGyrostdZ
fBodyAccMag-mean()		|	frequencyBodyAccMagmean
fBodyAccMag-std()		|	frequencyBodyAccMagstd
fBodyBodyAccJerkMag-mean()	| frequencybodyAccJerkMagmean
fBodyBodyAccJerkMag-std()	| frequencybodyAccJerkMagstd
fBodyBodyGyroMag-mean()		| frequencybodyGyroMagmean
fBodyBodyGyroMag-std()		| frequencybodyGyroMagstd
fBodyBodyGyroJerkMag-mean()	| frequencybodyGyroJerkMagmean
fBodyBodyGyroJerkMag-std()	| frequencybodyGyroJerkMagstd

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3
