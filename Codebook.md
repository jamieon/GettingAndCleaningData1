---
title: "Codebook"
author: "jamieon"
date: "Monday, February 23, 2015"
output: html_document
---

The R code is found from run_analysis.R file. It reads the data from the https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip as data.zip file and unzippes the data.

Then the train data is loaded from /train/X_train.txt, /train/subject_train.txt and /train/y_train.txt into variables: trSet, trSubj and trAct. And the test data is loaded from /test/X_test.txt, /test/subject_test.txt and /test/y_test.txt into variables: tsSet, tsSubj and tsAct.

Data frames are produced:

mSet <- rbind(trSet,tsSet)

mSubj <- rbind(trSubj,tsSubj)

mAct <- rbind(trAct,tsAct)

The range of columns of interest is defined in the cols variable.

The mSet2 variable is obtained from mSet subsetting the col columns from it.

The sets of activity labels is load from /activity_labels.txt into actLabels variable and the column activity is added (finally as factor) to mSet2.

Also from mSubj is added the column Subject to the mSet2.

The names for the columns of tidy data set are read from /features.txt and are subset to the cols rows and finally added as names to the mSet2 set.

The mSet3 data frame is obtained from mSet2 by aggregating using mean on Subject and Activity.

The final mSet4 is obtained from mSet3 by discarding the last 2 columns that are meaningless, and, finally the mSet4 is saved as Step5DataSet.txt file.
Final tidy data set description

The file Step5DataSet.txt produced by the script run_analysis.R has 180 observarions of 68 variables.

The variables of the final TidyData are:

1.    Activity: Factor. It's value is one of: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING" , "STANDING" and "LAYING"

2.    Subject: Factor. It's value is a string representation of the subject number that lays between 1 and 30.

3.    tBodyAcc-mean()-X. Numeric, normalized between -1 and 1. It is the average of the body acceleration on the X axis.

4.    tBodyAcc-mean()-Y. Numeric, normalized between -1 and 1. It is the average of the body acceleration on the y axis.

5.    tBodyAcc-mean()-Z. Numeric, normalized between -1 and 1. It is the average of the body acceleration on the z axis.

6.    tBodyAcc-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of the body acceleration on the X axis.

7.    tBodyAcc-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation the body acceleration on the Y axis.

8.    tBodyAcc-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of the body acceleration on the Z axis.

9.    tGravityAcc-mean()-X. Numeric, normalized between -1 and 1. It is the average of gravity acceleration on the X axis.

10.    tGravityAcc-mean()-Y. Numeric, normalized between -1 and 1. It is the average of gravity acceleration on the Y axis.

11.    tGravityAcc-mean()-Z. Numeric, normalized between -1 and 1. It is the average of gravity acceleration on the Z axis.

12.    tGravityAcc-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of gravity acceleration on the X axis.

13.    tGravityAcc-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of gravity acceleration on the Y axis.

14.    tGravityAcc-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of gravity acceleration on the Z axis.

15.    tBodyAccJerk-mean()-X. Numeric, normalized between -1 and 1. It is the average of body jerk on the X axis.

16.    tBodyAccJerk-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body jerk on the y axis.

17.    tBodyAccJerk-mean()-Z. Numeric, normalized between -1 and 1. It is the average of body jerk on the z axis.

18.    tBodyAccJerk-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body jerk on the X axis.

19.    tBodyAccJerk-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body jerk on the y axis.

20.    tBodyAccJerk-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body jerk on the z axis.

21.    tBodyGyro-mean()-X. Numeric, normalized between -1 and 1. It is the average of body gyro on the X axis.

22.    tBodyGyro-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body gyro on the y axis.

23.    tBodyGyro-mean()-Z.Numeric, normalized between -1 and 1. It is the average of body gyro on the z axis.

24.    tBodyGyro-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro on the X axis.

25.    tBodyGyro-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro on the y axis.

26.    tBodyGyro-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro on the z axis.

27.    tBodyGyroJerk-mean()-X. Numeric, normalized between -1 and 1. It is the average of body gyro jerk on the X axis.

28.    tBodyGyroJerk-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body gyro jerk on the y axis.

29.    tBodyGyroJerk-mean()-Z. Numeric, normalized between -1 and 1. It is the average of body gyro jerk on the z axis.

30.    tBodyGyroJerk-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro jerk on the X axis.

31.    tBodyGyroJerk-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro jerk on the y axis.

32.    tBodyGyroJerk-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro jerk on the z axis.

33.    tBodyAccMag-mean(). Numeric, normalized between -1 and 1. It is the average of body acceleration magnitude.

34.    tBodyAccMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body acceleration magnitude.

35.    tGravityAccMag-mean(). Numeric, normalized between -1 and 1. It is the average of gravity acceleration magnitude.

36.    tGravityAccMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of gravity acceleration magnitude.

37.   tBodyAccJerkMag-mean(). Numeric, normalized between -1 and 1. It is the average of body jerk acceleration magnitude.

38.    tBodyAccJerkMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body jerk acceleration magnitude.

39.    tBodyGyroMag-mean(). Numeric, normalized between -1 and 1. It is the average of body gyro magnitude.

40.    tBodyGyroMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body gyro magnitude.

41.    tBodyGyroJerkMag-mean(). Numeric, normalized between -1 and 1. It is the average of body gyro jerk magnitude.

42.    tBodyGyroJerkMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body gyro jerk magnitude.

43.    fBodyAcc-mean()-X. Numeric, normalized between -1 and 1. It is the average of body acceleration frequence on x axis.

44.    fBodyAcc-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body acceleration frequence on y axis.

45.    fBodyAcc-mean()-Z. Numeric, normalized between -1 and 1. It is the average of body acceleration frequence on z axis.

46.    fBodyAcc-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body acceleration frequence on x axis.

47.    fBodyAcc-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body acceleration frequence on y axis.

48.    fBodyAcc-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body acceleration frequence on z axis.

49.    fBodyAccJerk-mean()-X. Numeric, normalized between -1 and 1. It is the average of body acc jerk frequence on x axis.

50.    fBodyAccJerk-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body acc jerk frequence on y axis.

51.    fBodyAccJerk-mean()-Z. Numeric, normalized between -1 and 1. It is the average of body acc jerk frequence on z axis.

52.    fBodyAccJerk-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body acc jerk frequence on x axis.

53.   fBodyAccJerk-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body acc jerk frequence on y axis.

54.    fBodyAccJerk-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body acc jerk frequence on z axis.

55.    fBodyGyro-mean()-X. Numeric, normalized between -1 and 1. It is the average of body gyro frequence on x axis.

56.    fBodyGyro-mean()-Y. Numeric, normalized between -1 and 1. It is the average of body gyro frequence on y axis.

57.    fBodyGyro-mean()-Z. Numeric, normalized between -1 and 1. It is the average of body gyro frequence on z axis.

58.    fBodyGyro-std()-X. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro frequence on x axis.

59.    fBodyGyro-std()-Y. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro frequence on y axis.

60.    fBodyGyro-std()-Z. Numeric, normalized between -1 and 1. It is the standard deviation of body gyro frequence on z axis.

61.    fBodyAccMag-mean(). Numeric, normalized between -1 and 1. It is the average of body acc magnitude frequence.

62.    fBodyAccMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body acc magnitude frequence.

63.    fBodyBodyAccJerkMag-mean(). Numeric, normalized between -1 and 1. It is the average of body acc jerk magnitude frequence.

64.    fBodyBodyAccJerkMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body acc jerk magnitude frequence.

65.    fBodyBodyGyroMag-mean(). Numeric, normalized between -1 and 1. It is the average of body gyro magnitude frequence.

66.   fBodyBodyGyroMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body gyro magnitude frequence.

67.    fBodyBodyGyroJerkMag-mean(). Numeric, normalized between -1 and 1. It is the average of body gyro jerk magnitude frequence.

68.    fBodyBodyGyroJerkMag-std(). Numeric, normalized between -1 and 1. It is the standard deviation of body gyro jerk magnitude frequence.

