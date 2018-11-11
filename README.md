README
================
Eric Allen

Introduction
------------

This readme file explains the processing of data from the Human Activity Recognition Using Smartphones Dataset to produce a summary dataset based on the study data.

Packet Files
------------

Included with the packet are the following:

-   README.md - (this file) explaining how the data was transformed per the instructions provided
-   Codebook.md - explanation of the source data and variables in the final tidy data
-   run\_analysis.R - R script file for processing the data and producing the meanSummary.txt output
-   meanSummary.txt - text file wth the resulting tidy data from the script

Source Data Files
-----------------

The analysis script assumes the following source data files exist in the working directory. (Per the instructions - "The code should have a file run\_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory")

Data Files for Processing.

-   features.txt
-   activity\_labels.txt
-   X\_test.txt
-   y\_test.txt
-   subject\_test.txt
-   X\_train.txt
-   y\_train.tx
-   subject\_train.txt

If needed, the script includes commented code for downloading, extracting and copying the relevent files to th working directory. See the Codebook.md for citations and links to the orginal study data.

Processing Steps (in order as scripted in the run\_analysis.R file)
-------------------------------------------------------------------

-   Install and load the required package ("plyr") for processing
-   Download and unzip the data.
    -   The download and unzip steps are commented out as the instructions stated that "The code should have a file run\_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory". "Samsung data" is interpreted to mean the relevant data files (listed above) from the "FUCI HAR Dataset.zip"
-   Load data into R - each of the data files listed was loaded into a dataframe.
-   Combine the subject, activity and measurement columns
-   Step 1 (per instructions) - Merges the training and the test sets to create one data set. (Output data frame is "fulltb")
-   Rename the columns based on the names provided (features.txt)
-   Step 2 - Extract only the measurements on the mean and standard deviation for each measurement. (Output data frame is "step2")
    -   Note: meanFreq features (the weighted average of the frequency components in order to obtain a mean frequency) were not extracted in to the summary data as they were not considered as included in the requested mean() and std() items
-   Step 3 - apply descriptive activity names to name the activities in the data set (Output data frame is still "step2")
-   Step 4 - appropriately label the data set with descriptive variable names. (Output data frame is still "step2")
-   Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (Output data frame is "step5".)
-   Create data set with write.table() using row.name=FALSE (Output data file is "meanSummary.txt")
