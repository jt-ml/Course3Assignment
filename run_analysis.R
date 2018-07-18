
##
## Assignment of Getting and Cleaning Data
##
##  Author: jtang
##

library(dplyr)

# read meta data - activity labels
md_activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')


# read meta data - features
md_features <- read.table('./UCI HAR Dataset/features.txt')
# extract feature/variables that are mean or standard deviation for each measurement.
selected_features <- md_features[grep('mean\\(\\)|std\\(\\)', md_features$V2),]

   
# read train dataset into R
train_x <- read.table('./UCI HAR Dataset/train/x_train.txt')
train_y <- read.table('./UCI HAR Dataset/train/y_train.txt')

train_subject <- read.table('./UCI HAR Dataset/train/subject_train.txt')
