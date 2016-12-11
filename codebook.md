---
title: "UCI HAR averages codebook"
author: "Frank Groot"
date: "9 november 2016"
output: html_document
---

Codebook
========
This codebook was generated on 2016-12-11 10:28:28. 

Introduction
------------
The [Smartphone_sensor_signals_mean_std_averages](./Smartphone_sensor_signals_mean_std_averages.csv) file is a tidy dataset derived from the dataset provided by the UCI in the Human Activity Recognition Using Smartphones Data Set. 

Source data is available from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

[README.md](./README.md) explains how all of the scripts work and how they are connected.


Data cleansing
--------------
The file Smartphone_sensor_signals_mean_std_averages.csv contains averages of test data as well as training data sets combined from the following files. 

- [UCI HAR Dataset/test/subject_test.txt](./UCI HAR Dataset/test/subject_test.txt)
- [UCI HAR Dataset/test/X_test.txt](./UCI HAR Dataset/test/X_test.txt)
- [UCI HAR Dataset/test/y_test.txt](./UCI HAR Dataset/test/y_test.txt)
- [UCI HAR Dataset/train/subject_train.txt](./UCI HAR Dataset/train/subject_train.txt)
- [UCI HAR Dataset/train/X_train.txt](./UCI HAR Dataset/train/X_train.txt)
- [UCI HAR Dataset/train/y_train.txt](./UCI HAR Dataset/train/y_train.txt)


The header names of the 561 measurements were taken from: 
- UCI HAR Dataset/features.txt

The dataset includes only mean and standard deviation variables of each measure and was aggregated by averaging each variable for each activity and each subject. 
The selection of mean and standard deviation variables of the measures consists of 79 columns. The key (test subject and activity columns) included, makes 82 columns in total.
The aggregation resulted in 180 rows of data, with a unique combination of TestSubject and Activity values in each row. 

The dataset characteristics:
- Each variable is in one column.
- Each observation of the variable is in a different row.
- Column headers are variable names, not values
- All observational units in the table are of the same type



Variable list and descriptions
------------------------------

Variable name                               | Description
--------------------------------------------|----------------------------------------------------------------------------
Time_BodyAccelleration_Mean_X               |	The mean of the body acceleration of the time domain signal on the X axis.
Time_BodyAccelleration_Mean_Y               |	The mean of the body acceleration on the Y axis.
Time_BodyAccelleration_Mean_Z               |	The mean of the body acceleration on the Z axis.
Time_BodyAccelleration_StdDev_X             |	The standard deviation of the body acceleration on the X axis.
Time_BodyAccelleration_StdDev_Y             |	The standard deviation of the body acceleration on the Y axis.
Time_BodyAccelleration_StdDev_Z             |	The standard deviation of the body acceleration on the Z axis.
Time_GravityAccelleration_Mean_X            |	The mean of the gravity acceleration on the X axis.
Time_GravityAccelleration_Mean_Y            |	The mean of the gravity acceleration on the Y axis.
Time_GravityAccelleration_Mean_Z            |	The mean of the gravity acceleration on the Z axis.
Time_GravityAccelleration_StdDev_X          |	The standard deviation of the gravity acceleration on the X axis.
Time_GravityAccelleration_StdDev_Y          |	The standard deviation of the gravity acceleration on the Y axis.
Time_GravityAccelleration_StdDev_Z          |	The standard deviation of the gravity acceleration on the Z axis.
Time_BodyAccellerationJerk_Mean_X           |	The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationJerk_Mean_Y           |	The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationJerk_Mean_Z           |	The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationJerk_StdDev_X         |	The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationJerk_StdDev_Y         |	The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationJerk_StdDev_Z         |	The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
Time_BodyGyro_Mean_X                        |	The mean of the body angular velocity on the X axis.
Time_BodyGyro_Mean_Y                        |	The mean of the body angular velocity on the Y axis.
Time_BodyGyro_Mean_Z                        |	The mean of the body angular velocity on the Z axis.
Time_BodyGyro_StdDev_X                      |	The standard deviation of the body angular velocity on the X axis.
Time_BodyGyro_StdDev_Y                      |	The standard deviation of the body angular velocity on the Y axis.
Time_BodyGyro_StdDev_Z                      |	The standard deviation of the body angular velocity on the Z axis.
Time_BodyGyroJerk_Mean_X                    |	The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.
Time_BodyGyroJerk_Mean_Y                    |	The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
Time_BodyGyroJerk_Mean_Z                    |	The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
Time_BodyGyroJerk_StdDev_X                  |	The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals.
Time_BodyGyroJerk_StdDev_Y                  |	The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
Time_BodyGyroJerk_StdDev_Z                  |	The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
Time_BodyAccellerationMagnitude_Mean        |	The mean of the body acceleration magnitude, calculated using the Euclidean norm.
Time_BodyAccellerationMagnitude_StdDev      |	The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.
Time_GravityAccellerationMagnitude_Mean     |	The mean of the gravity acceleration magnitude.
Time_GravityAccellerationMagnitude_StdDev   |	The standard deviation of the gravity acceleration magnitude.
Time_BodyAccellerationJerkMagnitude_Mean    |	The mean of the body acceleration magnitude derived in time to obtain Jerk signals.
Time_BodyAccellerationJerkMagnitude_StdDev  |	The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.
Time_BodyGyroMagnitude_Mean                 |	The mean of the angular velocity magnitude.
Time_BodyGyroMagnitude_StdDev               |	The standard deviation of the angular velocity magnitude.
Time_BodyGyroJerkMagnitude_Mean             |	The mean of the angular velocity magnitude derived in time to obtain Jerk signals.
Time_BodyGyroJerkMagnitude_StdDev           |	The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.
Freq_BodyAccelleration_Mean_X               |	The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_Mean_Y               |	The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_Mean_Z               |	The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_StdDev_X             |	The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_StdDev_Y             |	The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_StdDev_Z             |	The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_MeanFreq_X           |	The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_MeanFreq_Y           |	The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccelleration_MeanFreq_Z           |	The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_Mean_X           |	The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_Mean_Y           |	The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_Mean_Z           |	The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_StdDev_X         |	The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_StdDev_Y         |	The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_StdDev_Z         |	The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_MeanFreq_X       |	The mean weighted average of the frequency components to obtain a mean frequency of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_MeanFreq_Y       |	The mean weighted average of the frequency components to obtain a mean frequency of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerk_MeanFreq_Z       |	The mean weighted average of the frequency components to obtain a mean frequency of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_Mean_X                        |	The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_Mean_Y                        |	The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_Mean_Z                        |	The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_StdDev_X                      |	The standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_StdDev_Y                      |	The standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_StdDev_Z                      |	The standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_MeanFreq_X                    |	The mean of the weighted average of the frequency components to obtain a mean frequency  of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_MeanFreq_Y                    |	The mean of the weighted average of the frequency components to obtain a mean frequency  of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyro_MeanFreq_Z                    |	The mean of the weighted average of the frequency components to obtain a mean frequency  of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationMagnitude_Mean        |	The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationMagnitude_StdDev      |	The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationMagnitude_MeanFreq    |	The mean of the weighted average of the frequency components to obtain a mean frequency of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerkMagnitude_Mean    |	The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerkMagnitude_StdDev  |	The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyAccellerationJerkMagnitude_MeanFreq|	The mean of the weighted average of the frequency components to obtain a mean frequency of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroMagnitude_Mean                 |	The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroMagnitude_StdDev               |	The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroMagnitude_MeanFreq             |	The mean of the weighted average of the frequency components to obtain a mean frequency of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroJerkMagnitude_Mean             |	The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroJerkMagnitude_StdDev           |	The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Freq_BodyGyroJerkMagnitude_MeanFreq         |	The mean of the weighted average of the frequency components to obtain a mean frequency of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.


Dataset structure
-----------------


```r
str(data.final.tidy)
```

```
## Classes 'data.table' and 'data.frame':	180 obs. of  82 variables:
##  $ ActivityId                                  : int  1 2 3 4 5 6 1 2 3 4 ...
##  $ SubjectId                                   : int  1 1 1 1 1 1 2 2 2 2 ...
##  $ ActivityName                                : chr  "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" ...
##  $ Time_BodyAccelleration_Mean_X               : num  0.247 0.275 0.276 0.263 0.276 ...
##  $ Time_BodyAccelleration_Mean_Y               : num  -0.0233 -0.0231 -0.0147 -0.0243 -0.0196 ...
##  $ Time_BodyAccelleration_Mean_Z               : num  -0.093 -0.111 -0.11 -0.104 -0.11 ...
##  $ Time_BodyAccelleration_StdDev_X             : num  -0.826 -0.392 -0.988 -0.489 -0.958 ...
##  $ Time_BodyAccelleration_StdDev_Y             : num  -0.6975 -0.0884 -0.956 -0.4084 -0.8996 ...
##  $ Time_BodyAccelleration_StdDev_Z             : num  -0.776 -0.248 -0.968 -0.534 -0.9 ...
##  $ Time_GravityAccelleration_Mean_X            : num  0.551 0.936 0.863 0.916 0.93 ...
##  $ Time_GravityAccelleration_Mean_Y            : num  0.111 -0.1958 -0.0296 -0.1977 -0.2061 ...
##  $ Time_GravityAccelleration_Mean_Z            : num  0.2972 -0.0369 -0.2262 -0.1285 0.0192 ...
##  $ Time_GravityAccelleration_StdDev_X          : num  -0.944 -0.952 -0.98 -0.966 -0.992 ...
##  $ Time_GravityAccelleration_StdDev_Y          : num  -0.923 -0.935 -0.968 -0.966 -0.973 ...
##  $ Time_GravityAccelleration_StdDev_Z          : num  -0.931 -0.866 -0.965 -0.938 -0.951 ...
##  $ Time_BodyAccellerationJerk_Mean_X           : num  0.073 0.1014 0.0738 0.089 0.0731 ...
##  $ Time_BodyAccellerationJerk_Mean_Y           : num  0.00998 -0.0053 0.00454 0.02106 0.00798 ...
##  $ Time_BodyAccellerationJerk_Mean_Z           : num  -0.02091 -0.03144 -0.00346 -0.0184 0.00614 ...
##  $ Time_BodyAccellerationJerk_StdDev_X         : num  -0.824 -0.346 -0.992 -0.509 -0.952 ...
##  $ Time_BodyAccellerationJerk_StdDev_Y         : num  -0.776 -0.239 -0.985 -0.531 -0.934 ...
##  $ Time_BodyAccellerationJerk_StdDev_Z         : num  -0.89 -0.535 -0.988 -0.725 -0.964 ...
##  $ Time_BodyGyro_Mean_X                        : num  -0.0261 0.0414 -0.0359 0.0388 -0.041 ...
##  $ Time_BodyGyro_Mean_Y                        : num  -0.0814 -0.1049 -0.0791 -0.1164 -0.0646 ...
##  $ Time_BodyGyro_Mean_Z                        : num  0.0982 0.0613 0.1005 0.0397 0.1003 ...
##  $ Time_BodyGyro_StdDev_X                      : num  -0.845 -0.506 -0.985 -0.683 -0.913 ...
##  $ Time_BodyGyro_StdDev_Y                      : num  -0.792 -0.265 -0.983 -0.715 -0.936 ...
##  $ Time_BodyGyro_StdDev_Z                      : num  -0.826 -0.371 -0.98 -0.578 -0.922 ...
##  $ Time_BodyGyroJerk_Mean_X                    : num  -0.0944 -0.0895 -0.0978 -0.1071 -0.0961 ...
##  $ Time_BodyGyroJerk_Mean_Y                    : num  -0.0492 -0.0535 -0.0384 -0.051 -0.0398 ...
##  $ Time_BodyGyroJerk_Mean_Z                    : num  -0.055 -0.0766 -0.0539 -0.0629 -0.0557 ...
##  $ Time_BodyGyroJerk_StdDev_X                  : num  -0.828 -0.49 -0.993 -0.699 -0.941 ...
##  $ Time_BodyGyroJerk_StdDev_Y                  : num  -0.868 -0.499 -0.992 -0.83 -0.971 ...
##  $ Time_BodyGyroJerk_StdDev_Z                  : num  -0.869 -0.572 -0.994 -0.75 -0.957 ...
##  $ Time_BodyAccellerationMagnitude_Mean        : num  -0.758 -0.228 -0.971 -0.417 -0.923 ...
##  $ Time_BodyAccellerationMagnitude_StdDev      : num  -0.755 -0.364 -0.964 -0.565 -0.913 ...
##  $ Time_GravityAccellerationMagnitude_Mean     : num  -0.758 -0.228 -0.971 -0.417 -0.923 ...
##  $ Time_GravityAccellerationMagnitude_StdDev   : num  -0.755 -0.364 -0.964 -0.565 -0.913 ...
##  $ Time_BodyAccellerationJerkMagnitude_Mean    : num  -0.824 -0.326 -0.99 -0.551 -0.952 ...
##  $ Time_BodyAccellerationJerkMagnitude_StdDev  : num  -0.812 -0.346 -0.988 -0.534 -0.941 ...
##  $ Time_BodyGyroMagnitude_Mean                 : num  -0.773 -0.219 -0.968 -0.566 -0.901 ...
##  $ Time_BodyGyroMagnitude_StdDev               : num  -0.764 -0.326 -0.972 -0.605 -0.896 ...
##  $ Time_BodyGyroJerkMagnitude_Mean             : num  -0.862 -0.501 -0.994 -0.774 -0.963 ...
##  $ Time_BodyGyroJerkMagnitude_StdDev           : num  -0.859 -0.544 -0.992 -0.82 -0.96 ...
##  $ Freq_BodyAccelleration_Mean_X               : num  -0.824 -0.355 -0.989 -0.543 -0.958 ...
##  $ Freq_BodyAccelleration_Mean_Y               : num  -0.728 -0.103 -0.967 -0.455 -0.909 ...
##  $ Freq_BodyAccelleration_Mean_Z               : num  -0.814 -0.323 -0.976 -0.593 -0.928 ...
##  $ Freq_BodyAccelleration_StdDev_X             : num  -0.828 -0.408 -0.987 -0.47 -0.959 ...
##  $ Freq_BodyAccelleration_StdDev_Y             : num  -0.702 -0.14 -0.953 -0.422 -0.901 ...
##  $ Freq_BodyAccelleration_StdDev_Z             : num  -0.774 -0.274 -0.966 -0.539 -0.893 ...
##  $ Freq_BodyAccelleration_MeanFreq_X           : num  -0.0732 -0.1724 -0.0126 -0.0992 0.0131 ...
##  $ Freq_BodyAccelleration_MeanFreq_Y           : num  0.0872 0.0366 0.0907 0.0328 -0.0738 ...
##  $ Freq_BodyAccelleration_MeanFreq_Z           : num  0.1693 0.0174 0.2368 -0.0131 -0.047 ...
##  $ Freq_BodyAccellerationJerk_Mean_X           : num  -0.836 -0.352 -0.992 -0.519 -0.954 ...
##  $ Freq_BodyAccellerationJerk_Mean_Y           : num  -0.794 -0.273 -0.985 -0.539 -0.935 ...
##  $ Freq_BodyAccellerationJerk_Mean_Z           : num  -0.878 -0.482 -0.986 -0.696 -0.959 ...
##  $ Freq_BodyAccellerationJerk_StdDev_X         : num  -0.827 -0.4 -0.993 -0.543 -0.954 ...
##  $ Freq_BodyAccellerationJerk_StdDev_Y         : num  -0.773 -0.255 -0.987 -0.557 -0.939 ...
##  $ Freq_BodyAccellerationJerk_StdDev_Z         : num  -0.9 -0.588 -0.988 -0.753 -0.968 ...
##  $ Freq_BodyAccellerationJerk_MeanFreq_X       : num  0.1239 0.0159 0.212 0.1479 0.135 ...
##  $ Freq_BodyAccellerationJerk_MeanFreq_Y       : num  -0.0812 -0.2629 0.0877 -0.1168 -0.2655 ...
##  $ Freq_BodyAccellerationJerk_MeanFreq_Z       : num  0.0363 -0.1059 0.092 -0.1229 -0.0937 ...
##  $ Freq_BodyGyro_Mean_X                        : num  -0.812 -0.397 -0.983 -0.617 -0.907 ...
##  $ Freq_BodyGyro_Mean_Y                        : num  -0.813 -0.275 -0.985 -0.733 -0.946 ...
##  $ Freq_BodyGyro_Mean_Z                        : num  -0.815 -0.352 -0.983 -0.59 -0.927 ...
##  $ Freq_BodyGyro_StdDev_X                      : num  -0.856 -0.542 -0.985 -0.705 -0.916 ...
##  $ Freq_BodyGyro_StdDev_Y                      : num  -0.783 -0.268 -0.982 -0.707 -0.931 ...
##  $ Freq_BodyGyro_StdDev_Z                      : num  -0.846 -0.437 -0.981 -0.613 -0.928 ...
##  $ Freq_BodyGyro_MeanFreq_X                    : num  0.0118 -0.1531 0.0838 -0.1824 -0.1896 ...
##  $ Freq_BodyGyro_MeanFreq_Y                    : num  -0.0689 -0.1428 -0.0783 -0.1278 -0.323 ...
##  $ Freq_BodyGyro_MeanFreq_Z                    : num  0.0297 -0.0753 0.0871 -0.0756 -0.1362 ...
##  $ Freq_BodyAccellerationMagnitude_Mean        : num  -0.772 -0.286 -0.974 -0.522 -0.924 ...
##  $ Freq_BodyAccellerationMagnitude_StdDev      : num  -0.788 -0.516 -0.964 -0.659 -0.921 ...
##  $ Freq_BodyAccellerationMagnitude_MeanFreq    : num  0.18699 0.18596 0.15031 0.20035 0.00861 ...
##  $ Freq_BodyAccellerationJerkMagnitude_Mean    : num  -0.808 -0.288 -0.988 -0.515 -0.942 ...
##  $ Freq_BodyAccellerationJerkMagnitude_StdDev  : num  -0.818 -0.436 -0.987 -0.563 -0.939 ...
##  $ Freq_BodyAccellerationJerkMagnitude_MeanFreq: num  0.3 0.256 0.362 0.232 0.171 ...
##  $ Freq_BodyGyroMagnitude_Mean                 : num  -0.795 -0.352 -0.98 -0.673 -0.923 ...
##  $ Freq_BodyGyroMagnitude_StdDev               : num  -0.786 -0.428 -0.972 -0.629 -0.898 ...
##  $ Freq_BodyGyroMagnitude_MeanFreq             : num  -0.0018 0.0334 0.0128 -0.0865 -0.2379 ...
##  $ Freq_BodyGyroJerkMagnitude_Mean             : num  -0.862 -0.52 -0.992 -0.819 -0.963 ...
##  $ Freq_BodyGyroJerkMagnitude_StdDev           : num  -0.866 -0.613 -0.991 -0.835 -0.959 ...
##  $ Freq_BodyGyroJerkMagnitude_MeanFreq         : num  0.2436 0.2862 0.3354 0.1843 -0.0665 ...
##  - attr(*, ".internal.selfref")=<externalptr> 
##  - attr(*, "sorted")= chr  "SubjectId" "ActivityId"
```

List the key variables in the data table
----------------------------------------


```r
key(data.final.tidy)
```

```
## [1] "SubjectId"  "ActivityId"
```

Show a few rows of the dataset
------------------------------


```r
head(data.final.tidy,2)
```

```
##    ActivityId SubjectId     ActivityName Time_BodyAccelleration_Mean_X
## 1:          1         1          WALKING                     0.2472002
## 2:          2         1 WALKING_UPSTAIRS                     0.2747626
##    Time_BodyAccelleration_Mean_Y Time_BodyAccelleration_Mean_Z
## 1:                   -0.02331825                   -0.09304503
## 2:                   -0.02314297                   -0.11125903
##    Time_BodyAccelleration_StdDev_X Time_BodyAccelleration_StdDev_Y
## 1:                      -0.8263295                     -0.69754539
## 2:                      -0.3916190                     -0.08837635
##    Time_BodyAccelleration_StdDev_Z Time_GravityAccelleration_Mean_X
## 1:                      -0.7760002                        0.5505752
## 2:                      -0.2477857                        0.9363348
##    Time_GravityAccelleration_Mean_Y Time_GravityAccelleration_Mean_Z
## 1:                        0.1110040                       0.29722721
## 2:                       -0.1958305                      -0.03685004
##    Time_GravityAccelleration_StdDev_X Time_GravityAccelleration_StdDev_Y
## 1:                         -0.9437573                         -0.9234223
## 2:                         -0.9518902                         -0.9350262
##    Time_GravityAccelleration_StdDev_Z Time_BodyAccellerationJerk_Mean_X
## 1:                         -0.9312669                        0.07296333
## 2:                         -0.8657724                        0.10136759
##    Time_BodyAccellerationJerk_Mean_Y Time_BodyAccellerationJerk_Mean_Z
## 1:                       0.009983337                       -0.02090555
## 2:                      -0.005295223                       -0.03144403
##    Time_BodyAccellerationJerk_StdDev_X Time_BodyAccellerationJerk_StdDev_Y
## 1:                          -0.8237036                          -0.7763322
## 2:                          -0.3457566                          -0.2393681
##    Time_BodyAccellerationJerk_StdDev_Z Time_BodyGyro_Mean_X
## 1:                          -0.8899091          -0.02605857
## 2:                          -0.5352084           0.04141824
##    Time_BodyGyro_Mean_Y Time_BodyGyro_Mean_Z Time_BodyGyro_StdDev_X
## 1:          -0.08139599           0.09817202             -0.8448315
## 2:          -0.10490547           0.06130428             -0.5055573
##    Time_BodyGyro_StdDev_Y Time_BodyGyro_StdDev_Z Time_BodyGyroJerk_Mean_X
## 1:             -0.7924779             -0.8258839              -0.09442187
## 2:             -0.2647902             -0.3705264              -0.08953835
##    Time_BodyGyroJerk_Mean_Y Time_BodyGyroJerk_Mean_Z
## 1:              -0.04924724              -0.05504791
## 2:              -0.05354198              -0.07657973
##    Time_BodyGyroJerk_StdDev_X Time_BodyGyroJerk_StdDev_Y
## 1:                 -0.8279592                 -0.8678536
## 2:                 -0.4898719                 -0.4992631
##    Time_BodyGyroJerk_StdDev_Z Time_BodyAccellerationMagnitude_Mean
## 1:                 -0.8690675                           -0.7582016
## 2:                 -0.5718639                           -0.2275128
##    Time_BodyAccellerationMagnitude_StdDev
## 1:                             -0.7552068
## 2:                             -0.3637981
##    Time_GravityAccellerationMagnitude_Mean
## 1:                              -0.7582016
## 2:                              -0.2275128
##    Time_GravityAccellerationMagnitude_StdDev
## 1:                                -0.7552068
## 2:                                -0.3637981
##    Time_BodyAccellerationJerkMagnitude_Mean
## 1:                               -0.8240036
## 2:                               -0.3259029
##    Time_BodyAccellerationJerkMagnitude_StdDev Time_BodyGyroMagnitude_Mean
## 1:                                 -0.8117842                  -0.7727221
## 2:                                 -0.3463572                  -0.2193331
##    Time_BodyGyroMagnitude_StdDev Time_BodyGyroJerkMagnitude_Mean
## 1:                    -0.7641494                      -0.8624386
## 2:                    -0.3255807                      -0.5006187
##    Time_BodyGyroJerkMagnitude_StdDev Freq_BodyAccelleration_Mean_X
## 1:                        -0.8590389                    -0.8244113
## 2:                        -0.5442006                    -0.3546727
##    Freq_BodyAccelleration_Mean_Y Freq_BodyAccelleration_Mean_Z
## 1:                    -0.7282977                    -0.8141114
## 2:                    -0.1034141                    -0.3234274
##    Freq_BodyAccelleration_StdDev_X Freq_BodyAccelleration_StdDev_Y
## 1:                      -0.8276419                      -0.7022211
## 2:                      -0.4080591                      -0.1396283
##    Freq_BodyAccelleration_StdDev_Z Freq_BodyAccelleration_MeanFreq_X
## 1:                      -0.7738571                       -0.07315148
## 2:                      -0.2737778                       -0.17238200
##    Freq_BodyAccelleration_MeanFreq_Y Freq_BodyAccelleration_MeanFreq_Z
## 1:                        0.08724402                        0.16930601
## 2:                        0.03662328                        0.01735863
##    Freq_BodyAccellerationJerk_Mean_X Freq_BodyAccellerationJerk_Mean_Y
## 1:                        -0.8357781                        -0.7935446
## 2:                        -0.3520317                        -0.2733620
##    Freq_BodyAccellerationJerk_Mean_Z Freq_BodyAccellerationJerk_StdDev_X
## 1:                        -0.8782271                          -0.8270320
## 2:                        -0.4822771                          -0.4000669
##    Freq_BodyAccellerationJerk_StdDev_Y Freq_BodyAccellerationJerk_StdDev_Z
## 1:                          -0.7730519                          -0.9002103
## 2:                          -0.2547318                          -0.5882623
##    Freq_BodyAccellerationJerk_MeanFreq_X
## 1:                            0.12385748
## 2:                            0.01592982
##    Freq_BodyAccellerationJerk_MeanFreq_Y
## 1:                           -0.08116492
## 2:                           -0.26289519
##    Freq_BodyAccellerationJerk_MeanFreq_Z Freq_BodyGyro_Mean_X
## 1:                             0.0363420           -0.8118067
## 2:                            -0.1059374           -0.3970376
##    Freq_BodyGyro_Mean_Y Freq_BodyGyro_Mean_Z Freq_BodyGyro_StdDev_X
## 1:           -0.8128572           -0.8151754             -0.8559463
## 2:           -0.2748439           -0.3524275             -0.5415299
##    Freq_BodyGyro_StdDev_Y Freq_BodyGyro_StdDev_Z Freq_BodyGyro_MeanFreq_X
## 1:             -0.7828938             -0.8461143               0.01181643
## 2:             -0.2680822             -0.4369135              -0.15306511
##    Freq_BodyGyro_MeanFreq_Y Freq_BodyGyro_MeanFreq_Z
## 1:              -0.06894287               0.02971401
## 2:              -0.14282765              -0.07534228
##    Freq_BodyAccellerationMagnitude_Mean
## 1:                           -0.7721211
## 2:                           -0.2856510
##    Freq_BodyAccellerationMagnitude_StdDev
## 1:                             -0.7882211
## 2:                             -0.5158282
##    Freq_BodyAccellerationMagnitude_MeanFreq
## 1:                                0.1869908
## 2:                                0.1859568
##    Freq_BodyAccellerationJerkMagnitude_Mean
## 1:                               -0.8080810
## 2:                               -0.2878563
##    Freq_BodyAccellerationJerkMagnitude_StdDev
## 1:                                 -0.8175237
## 2:                                 -0.4357147
##    Freq_BodyAccellerationJerkMagnitude_MeanFreq
## 1:                                    0.3002426
## 2:                                    0.2561362
##    Freq_BodyGyroMagnitude_Mean Freq_BodyGyroMagnitude_StdDev
## 1:                  -0.7948937                    -0.7863067
## 2:                  -0.3520415                    -0.4283271
##    Freq_BodyGyroMagnitude_MeanFreq Freq_BodyGyroJerkMagnitude_Mean
## 1:                    -0.001796444                      -0.8618640
## 2:                     0.033421795                      -0.5195602
##    Freq_BodyGyroJerkMagnitude_StdDev Freq_BodyGyroJerkMagnitude_MeanFreq
## 1:                        -0.8657124                           0.2435667
## 2:                        -0.6127246                           0.2861994
```




