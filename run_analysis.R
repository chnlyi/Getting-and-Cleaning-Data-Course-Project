# step 0 - open library "dplyr" and "tidyr" 
library(dplyr)
library(tidyr)
# step 1 - extract activity labels into "activity" data frame and give column names
activity<-read.table(".\\UCI HAR Dataset\\activity_labels.txt")
colnames(activity)<-c("activityid","activity")
# step 2 - extract features id and names into "features" data frame and give column names 
features<-read.table(".\\UCI HAR Dataset\\features.txt")
colnames(features)<-c("id","name")
# step 3 - subset "features" data frame that "name" column contain "mean()" and "std()" into "ltdfea" data frame
ltdfea<-features[grep("mean\\(\\)|std\\(\\)",features$name),]
# step 4 - extract test subject id into "subject_test" data frame and give column names "subject"
subject_test<-read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
names(subject_test)<-"subject"
# step 5 - extract test activity into "y-test" data frame and give column names "activityid"
y_test<-read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
names(y_test)<-"activityid"
# step 6 - extract test features data into "x-test" data frame and give column names using "features$name"
x_test<-read.table(".\\UCI HAR Dataset\\test\\x_test.txt")
colnames(x_test)<-features$name
# step 7 - extract train subject id into "subject_train" data frame and give column names "subject"
subject_train<-read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
names(subject_train)<-"subject"
# step 8 - extract train activity into "y-train" data frame and give column names "activityid"
y_train<-read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
names(y_train)<-"activityid"
# step 9 - extract train features data into "x-train" data frame and give column names using "features$name"
x_train<-read.table(".\\UCI HAR Dataset\\train\\x_train.txt")
colnames(x_train)<-features$name
# step 10 - subset "x_test" data frame using "ltdfea" into data frame "ltd_test", 
#           and col-combined with "subject_test" and "y-test" into data frame "test"
ltd_test<-x_test[,ltdfea$id]
test<-cbind(subject_test,y_test,ltd_test)
# step 11 - subset "x_train" data frame using "ltdfea" into data frame "ltd_train", 
#           and col-combined with "subject_train" and "y-train" into data frame "train"
ltd_train<-x_train[,ltdfea$id]
train<-cbind(subject_train,y_train,ltd_train)
# step 12 - row-combine "test" and "train" into data frame "ltd" 
ltd<-rbind(test,train)
# step 13 - merge data frame "ltd" and "activity" into data frame "final", 
#           and remove column "activityid"
final<-merge(activity,ltd)
final<-final[,-which(colnames(final)=="activityid")]
# step 14 - group final by subject and activity, 
#           and summarize the means of the features into data frame "sum-final"
sum_final<-final %>% group_by(subject,activity) %>% summarise_each(funs(mean))
# step 15 - make tidy data named "tidy" by gather "features" inside data frame "sum_final" 
tidy<-gather(sum_final,measurement,average,-subject,-activity)
# step 16 - output the data frame "sum_final" into file named "tidydata.txt"
write.table(tidy,file="tidydata.txt",row.names=F,sep=",")
