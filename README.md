Getting and Cleaning Data Course Project
========================================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average 
   of each variable for each activity and each subject.

run_analysis.R steps
====================
1. The environment is set up and initialized
2. If the data has not been downloaded yet, it will be downloaded and unzipped 
3. We change the working directory to the unzipped data directory
4. The training and test data are read in from the their respective X files
5. The features and subject data for both train and test are read in from their respective 
   features and activity_labels files
6. The labels are then adjusted to something more descriptive
7. Both the train and test datasets are converted to data tables
8. These data tables are then row bound to create the raw dataset
9. A tidy dataset is created from the raw dataset after calculating the mean each variable for 
   each activity and each subject 
10. The variable names in the tidy dataset are then adjusted to create a more human readable set
    of variables
11. The tidy dataset is then written out to a text file and also returned as the program output
