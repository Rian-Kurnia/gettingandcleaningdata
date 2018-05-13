library(dplyr)

X_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
features <- read.table('./UCI HAR Dataset/features.txt')
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')

#Merges the training and the test sets to create one data set.
df1 <- cbind(subject_train,y_train,X_train)
df2 <- cbind(subject_test, y_test, X_test)
df <- rbind(df1,df2)

#Extracts only the measurements on the mean and standard deviation for each measurement.
indfeatures <- grep("mean|std", features[,2]); df <- df[,c(1,2,indfeatures)]

#Uses descriptive activity names to name the activities in the data set
df[,2] <- activity_labels[match(df[,2],activity_labels[,1]),2]

#Appropriately labels the data set with descriptive variable names.
temp <- features; temp <- sub("t","time", temp); temp <- gsub("-",".",temp)
temp <- gsub("mean()","mean",temp); temp <- gsub("std()","std", temp)
colnames(df) <- c('SubjectID','Activity',as.character(temp[indfeatures,2]))

#Creates a tidy data set with the average of each variable for each activity
#and each subject.
clean_data <- df %>% 
      group_by(SubjectID,Activity) %>%
      summarize_each(funs(mean))