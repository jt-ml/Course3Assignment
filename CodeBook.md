# Human Activity Recognition Using Smartphones Tidy Dataset

### Source Dataset Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

A full data description of above data is at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Origina source data can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Variables of Result dataset
The final result dataset after processing has 68 variables and they are.

1.	activity
2.	subject.id
3.	TimeBodyAccelerometer-mean()-X
4.	TimeBodyAccelerometer-mean()-Y
5.	TimeBodyAccelerometer-mean()-Z
6.	TimeBodyAccelerometer-std()-X
7.	TimeBodyAccelerometer-std()-Y
8.	TimeBodyAccelerometer-std()-Z
9.	TimeGravityAccelerometer-mean()-X
10.	TimeGravityAccelerometer-mean()-Y
11.	TimeGravityAccelerometer-mean()-Z
12.	TimeGravityAccelerometer-std()-X
13.	TimeGravityAccelerometer-std()-Y
14.	TimeGravityAccelerometer-std()-Z
15.	TimeBodyAccelerometerJerk-mean()-X
16.	TimeBodyAccelerometerJerk-mean()-Y
17.	TimeBodyAccelerometerJerk-mean()-Z
18.	TimeBodyAccelerometerJerk-std()-X
19.	TimeBodyAccelerometerJerk-std()-Y
20.	TimeBodyAccelerometerJerk-std()-Z
21.	TimeBodyGyroscope-mean()-X
22.	TimeBodyGyroscope-mean()-Y
23.	TimeBodyGyroscope-mean()-Z
24.	TimeBodyGyroscope-std()-X
25.	TimeBodyGyroscope-std()-Y
26.	TimeBodyGyroscope-std()-Z
27.	TimeBodyGyroscopeJerk-mean()-X
28.	TimeBodyGyroscopeJerk-mean()-Y
29.	TimeBodyGyroscopeJerk-mean()-Z
30.	TimeBodyGyroscopeJerk-std()-X
31.	TimeBodyGyroscopeJerk-std()-Y
32.	TimeBodyGyroscopeJerk-std()-Z
33.	TimeBodyAccelerometerMagnitude-mean()
34.	TimeBodyAccelerometerMagnitude-std()
35.	TimeGravityAccelerometerMagnitude-mean()
36.	TimeGravityAccelerometerMagnitude-std()
37.	TimeBodyAccelerometerJerkMagnitude-mean()
38.	TimeBodyAccelerometerJerkMagnitude-std()
39.	TimeBodyGyroscopeMagnitude-mean()
40.	TimeBodyGyroscopeMagnitude-std()
41.	TimeBodyGyroscopeJerkMagnitude-mean()
42.	TimeBodyGyroscopeJerkMagnitude-std()
43.	FrequencyBodyAccelerometer-mean()-X
44.	FrequencyBodyAccelerometer-mean()-Y
45.	FrequencyBodyAccelerometer-mean()-Z
46.	FrequencyBodyAccelerometer-std()-X
47.	FrequencyBodyAccelerometer-std()-Y
48.	FrequencyBodyAccelerometer-std()-Z
49.	FrequencyBodyAccelerometerJerk-mean()-X
50.	FrequencyBodyAccelerometerJerk-mean()-Y
51.	FrequencyBodyAccelerometerJerk-mean()-Z
52.	FrequencyBodyAccelerometerJerk-std()-X
53.	FrequencyBodyAccelerometerJerk-std()-Y
54.	FrequencyBodyAccelerometerJerk-std()-Z
55.	FrequencyBodyGyroscope-mean()-X
56.	FrequencyBodyGyroscope-mean()-Y
57.	FrequencyBodyGyroscope-mean()-Z
58.	FrequencyBodyGyroscope-std()-X
59.	FrequencyBodyGyroscope-std()-Y
60.	FrequencyBodyGyroscope-std()-Z
61.	FrequencyBodyAccelerometerMagnitude-mean()
62.	FrequencyBodyAccelerometerMagnitude-std()
63.	FrequencyBodyAccelerometerJerkMagnitude-mean()
64.	FrequencyBodyAccelerometerJerkMagnitude-std()
65.	FrequencyBodyGyroscopeMagnitude-mean()
66.	FrequencyBodyGyroscopeMagnitude-std()
67.	FrequencyBodyGyroscopeJerkMagnitude-mean()
68.	FrequencyBodyGyroscopeJerkMagnitude-std()


### Variables Data Type:
1. activity variable is Factor type
2. subject.id variable is Integer type
3. the rest of variables are all Numeric type

### Data Transformation
- merged train and test data set into one data set using rbind function
- tidy dataset using group_by then applying mean on each variables.

### Data
The final result dataset stored at a file: tidydata.txt, has 180 observations and each of observations is the average of each varaible for each activity and each subject.






