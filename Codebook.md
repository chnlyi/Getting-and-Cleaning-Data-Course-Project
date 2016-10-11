# Getting and Cleaning Data Course Project

## Codebook

### Original Datasets
Human Activity Recognition Using Smartphones Dataset was collected in an experiment that has been carried out with a group of 30 volunteers (subject) performing six activities. Subjects gravitational and body motion have been recorded using smartphones.
Following are the datasets:
* 'features.txt': List of all features (measurements)
* 'activity_labels.txt': The class labels with their activity name. 
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'train/subject_train.txt': Training subjects.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'test/subject_test.txt': Test subjects.

---

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
* average   : Numeric -- Normalized averages of the measurements
	+ from -1.0 to 1.0

---

### Procedures that extract, transform and generate tidy data file "tidydata.txt"
1. Download file and unzip into folder "UCI HAR Dataset" under R working directory
2. Run Code "run_analysis.R" (detailed steps):
	* step 0 - open library "dplyr" and "tidyr" 
	* step 1 - extract activity labels from file "activity_labels.txt" into "activity" data frame and give column names
	* step 2 - extract features id and names from file "features.txt" into "features" data frame and give column names 
	* step 3 - subset "features" data frame that column "name" contains "mean()" and "std()" into "ltdfea" data frame
	* step 4 - extract test subject id from file "subject_test.txt" into "subject_test" data frame and give column names "subject"
	* step 5 - extract test activity from file "y_test.txt" into "y-test" data frame and give column names "activityid"
	* step 6 - extract test features data from file "X_test.txt" into "x-test" data frame and give column names using "features$name"
	* step 7 - extract train subject id from file "subject_train.txt" into "subject_train" data frame and give column names "subject"
	* step 8 - extract train activity from file "y_train.txt" into "y-train" data frame and give column names "activityid"
	* step 9 - extract train features data from file "X_train.txt" into "x-train" data frame and give column names using "features$name"
	* step 10 - subset "x_test" data frame using "ltdfea" into data frame "ltd_test", and col-combined with "subject_test" and "y-test" into data frame "test"
	* step 11 - subset "x_train" data frame using "ltdfea" into data frame "ltd_train", and col-combined with "subject_train" and "y-train" into data frame "train"
	* step 12 - row-combine "test" and "train" into data frame "ltd" 
	* step 13 - merge data frame "ltd" and "activity" into data frame "final", and remove column "activityid"
	* step 14 - group final by subject and activity, and summarize the means of the features into data frame "sum-final"
	* step 15 - make tidy data named "tidy" by gather "features" inside data frame "sum_final" 
	* step 16 - output the data frame "sum_final" into a comma separated text file named "tidydata.txt"	
