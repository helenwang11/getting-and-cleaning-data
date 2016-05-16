#!/usr/bin/Rscript

# load libraries
if("dplyr" %in% rownames(installed.packages()) == FALSE){
  install.packages("dplyr")
}
library(dplyr)

# read in features
features<-read.table("features.txt",header=F,stringsAsFactors = F)
colnames(features)<-c("number","feature")
# extract disired features: features that are mean or standard deviation
features[grepl("Mean|mean|std",features$feature),]$feature-> desired_features

# read in test data (test data is 2947 by 561)
test <- read.table("test/X_test.txt", sep = "" , header = F)

# label the columns with feature name (there are  561 total features)
colnames(test)<-features[[2]]

# select only the desired features
test <-test[,desired_features]

# read in activities associated with test data
test_activity<-read.table("test/y_test.txt",header=F)
colnames(test_activity)[1]<-"code"

# read in activity labels
read.table("activity_labels.txt",header=F)->label
colnames(label)<-c("code","activity")

# now match up test_activity with corresponding label
left_join(test_activity,label)->test_activity

# assign activity label to test data
test$activity<-test_activity$activity

# read in test subject
test_subject<-read.table("test/subject_test.txt",header=F)
colnames(test_subject)[1]<-"subject"
# assign subject to test data
test$subject<-test_subject$subject

# do the same thing with training data
train <- read.table("train/X_train.txt",sep = "" , header = F)
colnames(train)<-features[[2]]
train <-train[,desired_features]
train_activity<-read.table("train/y_train.txt",header=F)
colnames(train_activity)[1]<-"code"
left_join(train_activity,label)->train_activity

train$activity<-train_activity$activity
train_subject<-read.table("train/subject_train.txt",header=F)
colnames(train_subject)[1]<-"subject"
train$subject<-train_subject$subject

# combine test data and training data
rbind(test,train) -> tidy

# rename variables to descriptive variable names
colnames(tidy)->variable_names

rename_variable<-function(x){
  sub("^t","time_",x)->x
  sub("^f","frequency_",x)->x
  gsub("-","_",x)->x
  gsub("[()]","",x)->x
  x
}
sapply(variable_names,rename_variable)->colnames(tidy)

# summarize total data by mean
tidy%>%group_by(subject,activity)%>%summarise_each(funs(mean))->tidy_mean
write.table(tidy_mean,"tidy_mean.txt",row.names=F)

