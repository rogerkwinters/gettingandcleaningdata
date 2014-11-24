##
## Roger K. Winters
## Getting and Cleaning Data Course Project
##
## run_analysis
##

##
## Set up the environment
##
library(data.table)
setwd("~/Coursera/Getting and Cleaning Data")

##
## Download dataset and unzip it in current directory
##
if(!file.exists("./data.zip")) {
        fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile = "./data.zip", mode = "wb")
        unzip("data.zip")
}

##
## Change to the "UCI HAR Dataset" directory
##
setwd("UCI HAR Dataset")

##
## Read in only mean and std features and activity labels
##
allfeatures <- read.table("features.txt", col.names = c("index", "name"))
features <- subset(allfeatures, grepl("-(mean|std)[(]", allfeatures$name))
labels <- read.table("activity_labels.txt", col.names = c("level", "activity"))

##
## Read in the train and test datasets
##
traindata <- read.table('train/X_train.txt')[, features$index]
testdata <- read.table('test/X_test.txt')[, features$index]

names(traindata) <- features$name
names(testdata) <- features$name

trainlabels <- read.table("train/y_train.txt")[, 1]
traindata$activity <- factor(trainlabels, levels=labels$level, labels=labels$activity)

trainsubjects <- read.table("train/subject_train.txt")[, 1]
traindata$subject <- factor(trainsubjects)

testlabels <- read.table("test/y_test.txt")[, 1]
testdata$activity <- factor(testlabels, levels=labels$level, labels=labels$activity)

testsubjects <- read.table("test/subject_test.txt")[, 1]
testdata$subject <- factor(testsubjects)

##
## Convert both datasets to data tables
##
traindt <- data.table(traindata)
testdt <- data.table(testdata)

##
## Row bind the two data tables
##
rawdataset <- rbind(traindt, testdt)

##
## Now create a tidy dataset and calculate the mean of each variable for each activity and each subject
##
tidydataset <- rawdataset[, lapply(.SD, mean), by=list(activity, subject)]

##
## Change variable names to lower case and more descriptive
##
names <- names(tidydataset)

# Change occurrances of leading "f" to "frequency"
names <- gsub("^f", "frequency", names)
# Change occurrances of leading "t" to "time"
names <- gsub("^t", "time", names)
## Remove parens and dashes
names <- gsub("[()-]", "", names)
## Replace "BodyBody" with "body"
names <- gsub("BodyBody", "body", names)
## Replace "-mean" with "mean"
names <- gsub("-mean", "mean", names)
## Replace "-std" with "std"
names <- gsub("-std", "std", names)

setnames(tidydataset, names)

##
## Write the tidy dataset to a text file
##
setwd("~/Coursera/Getting and Cleaning Data")
write.table(tidydataset, file = "tidydata.txt", row.names = FALSE)

##
## Return the tidy dataset
##
tidydataset


