# Getting and Cleaning Data Course Project

## Codebook

### Original Datasets:
* 'features.txt': List of all features (measurements)
* 'activity_labels.txt': The class labels with their activity name. 
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'train/subject_train.txt': Training subjects.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'test/subject_test.txt': Test subjects.

### Data dictionary of "tidydata.txt":
* subject : Integer -- Unique ID of subjects 
	+ 1....30 
* activity: Factor w/ 6 levels -- Activity name that subjects performed
	+ WALKING
	+ WALKING_UPSTAIRS
	+ WALKING_DOWNSTAIRS
	+ SITTING
	+ STANDING
	+ LAYING	
* measurement : Character  -- Names of the 66 measurements that the sensor signals and contains for mean's and std's only
	+ tBodyAcc-mean()-X
	+ tBodyAcc-mean()-Y
	+ tBodyAcc-mean()-Z
	+ tBodyAcc-std()-X
	+ tBodyAcc-std()-Y
	+ tBodyAcc-std()-Z
	+ tGravityAcc-mean()-X
	+ tGravityAcc-mean()-Y
	+ tGravityAcc-mean()-Z
	+ tGravityAcc-std()-X
	+ tGravityAcc-std()-Y
	+ tGravityAcc-std()-Z
	+ tBodyAccJerk-mean()-X
	+ tBodyAccJerk-mean()-Y
	+ tBodyAccJerk-mean()-Z
	+ tBodyAccJerk-std()-X
	+ tBodyAccJerk-std()-Y
	+ tBodyAccJerk-std()-Z
	+ tBodyGyro-mean()-X
	+ tBodyGyro-mean()-Y
	+ tBodyGyro-mean()-Z
	+ tBodyGyro-std()-X
	+ tBodyGyro-std()-Y
	+ tBodyGyro-std()-Z
	+ tBodyGyroJerk-mean()-X
	+ tBodyGyroJerk-mean()-Y
	+ tBodyGyroJerk-mean()-Z
	+ tBodyGyroJerk-std()-X
	+ tBodyGyroJerk-std()-Y
	+ tBodyGyroJerk-std()-Z
	+ tBodyAccMag-mean()
	+ tBodyAccMag-std()
	+ tGravityAccMag-mean()
	+ tGravityAccMag-std()
	+ tBodyAccJerkMag-mean()
	+ tBodyAccJerkMag-std()
	+ tBodyGyroMag-mean()
	+ tBodyGyroMag-std()
	+ tBodyGyroJerkMag-mean()
	+ tBodyGyroJerkMag-std()
	+ fBodyAcc-mean()-X
	+ fBodyAcc-mean()-Y
	+ fBodyAcc-mean()-Z
	+ fBodyAcc-std()-X
	+ fBodyAcc-std()-Y
	+ fBodyAcc-std()-Z
	+ fBodyAccJerk-mean()-X
	+ fBodyAccJerk-mean()-Y
	+ fBodyAccJerk-mean()-Z
	+ fBodyAccJerk-std()-X
	+ fBodyAccJerk-std()-Y
	+ fBodyAccJerk-std()-Z
	+ fBodyGyro-mean()-X
	+ fBodyGyro-mean()-Y
	+ fBodyGyro-mean()-Z
	+ fBodyGyro-std()-X
	+ fBodyGyro-std()-Y
	+ fBodyGyro-std()-Z
	+ fBodyAccMag-mean()
	+ fBodyAccMag-std()
	+ fBodyBodyAccJerkMag-mean()
	+ fBodyBodyAccJerkMag-std()
	+ fBodyBodyGyroMag-mean()
	+ fBodyBodyGyroMag-std()
	+ fBodyBodyGyroJerkMag-mean()
	+ fBodyBodyGyroJerkMag-std()
* average   : Numeric -- Averages of the normalized measurements
	+ from -1.0 to 1.0
