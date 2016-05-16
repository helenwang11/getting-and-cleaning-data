run_analysis.R analyzes the Human Activity Recognition Using Smartphones Data Set from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

1. The script first read in the features -> dataframe "features"
2. Extracts only the features that are mean and standard deviation for each measurement -> dataframe "desired features"
3. Reads in test measurements, label the measurements, and extracts only the desired measurements (desired features) -> dataframe "test"
4. Reads in test activity label and label the activity with corresponding labels-> dataframe "test_activity"
  The labels are as following:
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING
5. Associate activity label with test measurement: test$activity
5. Reads in test subjects and associates subject to test measurements: test$subject
6. The script then does the same data clean-up with training data:  dataframe "train"
7. combine test data and training data: dataframe "tidy"
8. rename variables to descriptive variable names:
   t -> time
   f -> frequency
   change the "-" to "_"
   remove the parentheses
9. summarize tidy data set with the average of each variable for each activity and each subject: dataframe "tidy_mean"
10. write out "tidy_mean": "tidy_mean.txt"


The new variable names in the tidy_mean data are:

subject	
activity	
timeBodyAcc_mean_X	
timeBodyAcc_mean_Y	
timeBodyAcc_mean_Z	
timeBodyAcc_std_X	
timeBodyAcc_std_Y	
timeBodyAcc_std_Z	
timeGravityAcc_mean_X	
timeGravityAcc_mean_Y	
timeGravityAcc_mean_Z	
timeGravityAcc_std_X	
timeGravityAcc_std_Y	
timeGravityAcc_std_Z	
timeBodyAccJerk_mean_X	
timeBodyAccJerk_mean_Y	
timeBodyAccJerk_mean_Z	
timeBodyAccJerk_std_X	
timeBodyAccJerk_std_Y	
timeBodyAccJerk_std_Z	
timeBodyGyro_mean_X	
timeBodyGyro_mean_Y	
timeBodyGyro_mean_Z	
timeBodyGyro_std_X	
timeBodyGyro_std_Y	
timeBodyGyro_std_Z	
timeBodyGyroJerk_mean_X	
timeBodyGyroJerk_mean_Y	
timeBodyGyroJerk_mean_Z	
timeBodyGyroJerk_std_X	
timeBodyGyroJerk_std_Y	
timeBodyGyroJerk_std_Z	
timeBodyAccMag_mean	
timeBodyAccMag_std	
timeGravityAccMag_mean	
timeGravityAccMag_std	
timeBodyAccJerkMag_mean	
timeBodyAccJerkMag_std	
timeBodyGyroMag_mean	
timeBodyGyroMag_std	
timeBodyGyroJerkMag_mean	
timeBodyGyroJerkMag_std	
frequencyBodyAcc_mean_X	
frequencyBodyAcc_mean_Y	
frequencyBodyAcc_mean_Z	
frequencyBodyAcc_std_X	
frequencyBodyAcc_std_Y	
frequencyBodyAcc_std_Z	
frequencyBodyAcc_meanFreq_X	
frequencyBodyAcc_meanFreq_Y	
frequencyBodyAcc_meanFreq_Z	
frequencyBodyAccJerk_mean_X	
frequencyBodyAccJerk_mean_Y	
frequencyBodyAccJerk_mean_Z	
frequencyBodyAccJerk_std_X	
frequencyBodyAccJerk_std_Y	
frequencyBodyAccJerk_std_Z	
frequencyBodyAccJerk_meanFreq_X	
frequencyBodyAccJerk_meanFreq_Y	
frequencyBodyAccJerk_meanFreq_Z	
frequencyBodyGyro_mean_X	
frequencyBodyGyro_mean_Y	
frequencyBodyGyro_mean_Z	
frequencyBodyGyro_std_X	
frequencyBodyGyro_std_Y	
frequencyBodyGyro_std_Z	
frequencyBodyGyro_meanFreq_X	
frequencyBodyGyro_meanFreq_Y	
frequencyBodyGyro_meanFreq_Z	
frequencyBodyAccMag_mean	
frequencyBodyAccMag_std	
frequencyBodyAccMag_meanFreq	
frequencyBodyBodyAccJerkMag_mean	
frequencyBodyBodyAccJerkMag_std	
frequencyBodyBodyAccJerkMag_meanFreq	
frequencyBodyBodyGyroMag_mean	
frequencyBodyBodyGyroMag_std	
frequencyBodyBodyGyroMag_meanFreq	
frequencyBodyBodyGyroJerkMag_mean	
frequencyBodyBodyGyroJerkMag_std	
frequencyBodyBodyGyroJerkMag_meanFreq	
angletBodyAccMean	gravity
angletBodyAccJerkMean	gravityMean
angletBodyGyroMean	gravityMean
angletBodyGyroJerkMean	gravityMean
angleX	gravityMean
angleY	gravityMean
angleZ	gravityMean
