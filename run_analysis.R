#!/usr/bin/Rscript

library(dplyr)

features<-read.table("features.txt",header=F,stringsAsFactors = F)
colnames(features)<-c("number","feature")
features[grepl("Mean|mean|std",features$feature),]$feature-> desired_features

test <- read.table("test/X_test.txt", sep = "" , header = F)
colnames(test)<-features[[2]]
test <-test[,desired_features]
test_activity<-read.table("test/y_test.txt",header=F)
colnames(test_activity)[1]<-"code"
read.table("activity_labels.txt",header=F)->label
colnames(label)<-c("code","activity")
left_join(test_activity,label)->test_activity

test$activity<-test_activity$activity
test_subject<-read.table("test/subject_test.txt",header=F)
colnames(test_subject)[1]<-"subject"
test$subject<-test_subject$subject

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

rbind(test,train) -> total


total%>%group_by(subject,activity)%>%summarise_each(funs(mean))->total_tidy
colnames(total_tidy)->variable_names
rename_variable<-function(x){
  sub("^t","time_",x)->x
  sub("^f","frequency_",x)->x
  gsub("-","_",x)->x
  gsub("[()]","",x)->x
  x
}
sapply(variable_names,rename_variable)->colnames(total_tidy)

write.table(total_tidy,"total_tidy.txt",row.names=F)
