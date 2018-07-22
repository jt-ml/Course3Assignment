
##
## Assignment of Getting and Cleaning Data
##
##  Author: jtang
##

library(dplyr)

# 0 download and unzip data source
data_source_url <-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
raw_data_file <- 'rawdata.zip'
download.file(data_source_url, raw_data_file)

unzip(raw_data_file)
file.remove(raw_data_file)

# read meta data - activity labels
activity.labels <- read.table('./UCI HAR Dataset/activity_labels.txt',
                                 col.names = c("activity.id","label"))


# read meta data - features
features <- read.table('./UCI HAR Dataset/features.txt',
                          col.names = c("id", "feature"))
# extract feature/variables that are mean or standard deviation for each measurement.
selected.features <- features[grep('mean\\(\\)|std\\(\\)', features$feature),]

   
# read train dataset into R
train.set <- read.table('./UCI HAR Dataset/train/x_train.txt')[, selected.features[,1]]
train.labels <- read.table('./UCI HAR Dataset/train/y_train.txt',
                           col.names = c("activity.id"))

train.subject <- read.table('./UCI HAR Dataset/train/subject_train.txt',
                            col.names = c('subject.id'))

# read test dataset into R
test.set <- read.table('./UCI HAR Dataset/test/x_test.txt')[, selected.features[,1]]
test.labels <- read.table('./UCI HAR Dataset/test/y_test.txt',
                          col.names = c("activity.id"))

test.subject <- read.table('./UCI HAR Dataset/test/subject_test.txt',
                            col.names = c('subject.id'))

# merge train and test dataset into one set
all.set <- rbind(train.set, test.set)
all.labels <- rbind(train.labels, test.labels)
all.subject <- rbind(train.subject, test.subject)


all.labels$activity.label <- factor(all.labels$activity.id, labels = as.character(activity.labels$label))

# 4. Appropriately labels the data set with descriptive variable names
colnames(all.set) <- selected.features$feature


# 5. From the data set in step 4, creates a second, 
#    independent tidy data set with the average of each variable for each activity and each subject.

all.data <- cbind(all.subject, activity = all.labels$activity.label, all.set)


all.tidy <- all.data %>%
  group_by(activity, subject.id) %>%
  summarise_all(mean)


#write.csv(all.data, file = 'all.csv', row.names = FALSE)
###   store tidy dataset into csv file
write.csv(all.tidy, file = 'tidydata.csv',row.names = FALSE, quote = FALSE)

### display summary of final tidy dataset
all.tidy

