download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","data.zip")
unzip("data.zip")
trSet <- read.table("UCI HAR Dataset/train/X_train.txt")
trSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
trAct <- read.table("UCI HAR Dataset/train/y_train.txt")
tsSet <- read.table("UCI HAR Dataset/test/X_test.txt")
tsSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")
tsAct <- read.table("UCI HAR Dataset/test/y_test.txt")
## To merges the sets:
  mSet <- rbind(trSet,tsSet)
  mSubj <- rbind(trSubj,tsSubj)
  mAct <- rbind(trAct,tsAct)
## To extracts mean and std.dev.:
  cols <- c( 1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
  mSet2 <- mSet[,cols]
## Activity labels:
  actLabels <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
  actLabels <- actLabels[,2]
  mSet2$Activity <- actLabels[mAct$V1]
  mSet2$Activity <- as.factor(mSet2$Activity)
  mSet2$Subject <- as.factor(mSubj$V1)
## Relabeling:
  nSet <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
  nSet <- nSet[,2]
  newNames = nSet[cols]
  names(mSet2) <- c(newNames, "Activity", "Subject")
## To create tidy data:
  mSet3 <- aggregate(mSet2,list(Activity=mSet2$Activity,Subject=mSet2$Subject),mean)
  mSet4 <- mSet3[,1:68]
  write.table(mSet4,"TidyData.txt")