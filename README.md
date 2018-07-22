# Getting and Cleaning Data Week 4 Assignment
Peer-graded assignment: Getting and Cleaning Data Course Project 

### Requirements for data analysis
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### How does the R script work
run_analysis.R script will perform following steps:

1. download data source and store it under current working directory
2. Load both trainning and test dataset into R
7. Process and analyze dataset based on above requirements
8. Tidy dataset and saves final result in a csv file.

### Result dataset
The final result produced after executing run_analysis.R is stored in csv file: tidydata.csv


