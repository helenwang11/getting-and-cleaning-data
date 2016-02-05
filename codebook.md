run_analysis.R calculates the average of the following variables for each activity and each subject:

subject
activity
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()
angle(tBodyAccMean,gravity)
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)

the script then rename the variables:
1. t -> time
2. f -> frequency
3. change the "-" to "_"
4. remove the parentheses


The new variable names are:

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
