##########################################################################################################
## Coursera Getting and Cleaning Data Course Project

# Data for this assignment:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# runAnalysis.r File Description:
# This script will do the following:

# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set.
# 4. Appropriately label the data set with descriptive variable names. 
# 5. From the data set in step 4, create a second, independent tidy data set with the average of each 
#    variable for each activity and each subject.
##########################################################################################################

# Set the folder where data is stored as the working directory.
setwd("./UCI HAR Dataset")

# Read the feature list, use the list as column names.
feature <- read.table("features.txt", header = FALSE, colClasses = c("numeric","character"))
colnames <- feature[,2]

# Read the train data set, then bind with activity types and volunteer IDs.
train <- read.table("./train/X_train.txt", header= FALSE, col.names = colnames)
train_id <- scan("./train/subject_train.txt")
train_activityID <- scan("./train/y_train.txt")
train <- cbind(SubjectID = train_id, ActivityID = train_activityID, train)

# Read the test data set, then bind with activity types and volunteer IDs.
test <- read.table("./test/X_test.txt", header= FALSE, col.names = colnames)
test_id <- scan("./test/subject_test.txt")
test_activityID <- scan("./test/y_test.txt")
test <- cbind(SubjectID = test_id, ActivityID = test_activityID, test)

# 1. Merge the training and the test sets to create one data set.
merge <- rbind(train, test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
colnames <- names(merge)
final <- merge[,(grepl("SubjectID", colnames) | grepl("ActivityID", colnames) 
                 | grepl("mean", colnames) | grepl("std", colnames))]

# 3. Use descriptive activity names to name the activities in the data set
activityLabel <- read.table("./activity_labels.txt", header= FALSE)

  final$ActivityID <- sapply(final$ActivityID, function(x){
    activityLabel[which(activityLabel[,1] == x),2]
  })

# 4. Appropriately label the data set with descriptive variable names. 
colnames <- colnames(final)
colnames <- gsub("^t", "Time domain ",colnames)
colnames <- gsub("^f", "Frequency domain ",colnames)
colnames <- gsub("Body", "body ",colnames)
colnames <- gsub("Gravity", "gravity ",colnames)
colnames <- gsub("Acc", "acceleration ",colnames)
colnames <- gsub("Gyro", "angular velocity ",colnames)
colnames <- gsub("Jerk", "Jerk signals ",colnames)
colnames <- gsub("Mag", "magnitude ",colnames)
colnames <- gsub(".mean", "mean value ",colnames)
colnames <- gsub("mean value Freq", "frequency mean value ",colnames)
colnames <- gsub("mean value ..", "mean value",colnames)
colnames <- gsub(".std..", "standard deviation",colnames)
colnames <- gsub(".X", " on X-axis",colnames)
colnames <- gsub(".Y", " on Y-axis",colnames)
colnames <- gsub(".Z", " on Z-axis",colnames)
colnames(final) <- colnames

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each 
#    variable for each activity and each subject.
tidy <-aggregate(final[,3:ncol(final)], by =list(SubjectID = final$SubjectID, ActivityID = final$ActivityID),FUN = mean)
tidy <- tidy[order(tidy$SubjectID),]
write.table(tidy,"./tidy.txt", row.names = FALSE)