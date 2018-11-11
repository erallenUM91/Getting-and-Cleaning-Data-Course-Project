### Getting and Cleaning Course Project

## install packages, attach packages
  # note: package installations commented out 
install.packages("plyr")
library(plyr)

## Download and unzip th data 
# note: The download and unzip steps are commented out as the instructions assume the following:
# "The code should have a file run_analysis.R in the main directory that can be 
# run as long as the Samsung data is in your working directory"
# "Samsung data" is interpreted to mean the relevant data files from the 
# "FUCI HAR Dataset.zip"

# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(url, destfile = "FUCI HAR Dataset.zip", method = "curl")

# unzip("FUCI HAR Dataset.zip")

# copy relevant data files to the working directory

# list.of.files <- c(list.files("./UCI HAR Dataset", full.names = TRUE),
#                  list.files("./UCI HAR Dataset/test", full.names = TRUE), 
#                  list.files("./UCI HAR Dataset/train", full.names = TRUE))
# list.of.files <- list.of.files[!file.info(list.of.files)$isdir]
# file.copy(list.of.files,"./")

# load data into R

# feature lables (measurement labels)
features <- read.table("features.txt",header = FALSE,sep = "",dec = ".")
# activity labels
activity_lables <- read.table("activity_labels.txt",header = FALSE,sep = "",dec = ".")

## Test Data

# measurements
X_test <- read.table("X_test.txt",header = FALSE,sep = "",dec = ".")
# activities
y_test <- read.table("y_test.txt",header = FALSE,sep = "",dec = ".")
# subjects
subject_test <- read.table("subject_test.txt",header = FALSE,sep = "",dec = ".")

## Train Data

# measurements
X_train <- read.table("X_train.txt",header = FALSE,sep = "",dec = ".")
# activities
y_train <- read.table("y_train.txt",header = FALSE,sep = "",dec = ".")
# subjects
subject_train <- read.table("subject_train.txt",header = FALSE,sep = "",dec = ".")

# combine the subject, activity and measurement columns 

testtb <- cbind(subject_test, y_test, X_test)
traintb <- cbind(subject_train, y_train, X_train)

# combine the test and train rows

fulltb <- rbind(testtb, traintb)

# rename the columns 

colnames(fulltb) <- c("subject","activity",as.character(features[,2])) 

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

step2 <- fulltb[,grepl('subject|activity|mean|std',colnames(fulltb))]
# meanFreq features (the weighted average of the frequency components in order to obtain a 
# mean frequency) are removed from the extract of summary data as they were not considered as 
# included in the requested mean() and std() items 
step2 <- step2[,!grepl('meanFreq',colnames(step2))]

# 3. Uses descriptive activity names to name the activities in the data set

step2$activity <- as.character(step2$activity)
step2$activity <- mapvalues(step2$activity, from = c("1","2","3","4","5","6"), 
                             to = c("WALKING",
                                    "WALKING_UPSTAIRS",
                                    "WALKING_DOWNSTAIRS",
                                    "SITTING",
                                    "STANDING",
                                    "LAYING"))   
step2$activity <- as.factor(step2$activity)
table(step2$activity)


# 4. Appropriately labels the data set with descriptive variable names.

newnames <- colnames(step2)
newnames <- gsub("BodyBody","Body",newnames)
newnames <- gsub("[()-]","",newnames)
newnames <- gsub("mean","Mean",newnames)
newnames <- gsub("std","Std",newnames)
newnames <- gsub("^t","Time",newnames)
newnames <- gsub("^f","Frequency",newnames)
colnames(step2) <- newnames

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.

step5 <- aggregate(.~ subject+activity,step2, FUN = mean)
colnames(step5) <- c("subject","activity",paste("meanOf",colnames(step5[,3:68]), sep=""))

write.table(step5, file = "meanSummary.txt", row.name = FALSE)

