run_analysis <- function() {

    ## The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
    ## A full description is available at the site where the data was obtained: 
    ##     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    ## Here are the data for the project: 
    ##     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    ## Data in zipped file is downloaded to D:/R data folder and unzipped creating
    ## folder D:/R data/UCI HAR Dataset containing the files with the data and description

    ## OBJECTIVE: From the data collected, prepare tidy data that can be used for later analysis as follow:  
    ## Merges the training and the test sets to create one data set.
    ## Extracts only the measurements on the mean and standard deviation for each measurement. 
    ## Uses descriptive activity names to name the activities in the data set
    ## Appropriately labels the data set with descriptive variable names. 
    ## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    library("dplyr")
    setwd("D:/R data/UCI HAR Dataset")     # folder where downloaded data is unzipped

    #>> Get X data 
    
    x_train <- read.table("train/X_train.txt")
    x_test <- read.table("test/X_test.txt")
    
    #>> Name columns for X data
    features <- read.table("features.txt")
    names(features) <- c('feature_id', 'feature_name')
    names(x_train)<-features$feature_name 
    names(x_test)<-features$feature_name
    
    #>> Subset X data for only mean and std columns
    mean_or_std_column_no<- 
      grep("*mean\\(\\)|*std\\(\\)", features$feature_name) # search mean or std columns only   
    x_train <- x_train[, mean_or_std_column_no] 
    x_test <- x_test[, mean_or_std_column_no] 
    
  
    #>> Get Y data 
    y_train <- read.table("train/Y_train.txt")
    y_test <- read.table("test/Y_test.txt")
    
    
    #>> Give Y data descriptive meaning
    activities <- read.table("activity_labels.txt")
    y_train$V1<-activities[y_train$V1, 2]
    y_test$V1<-activities[y_test$V1, 2]
    
    
    #>> Name column for Y data
    names(y_train)<-'activity'
    names(y_test)<-'activity'
    
    #>> Get SUBJECT data
    subject_train <- read.table("train/Subject_train.txt")
    subject_test <- read.table("test/Subject_test.txt")

    #>> Name column for subject data
    names(subject_train) <- "subject"
    names(subject_test) <- "subject"

    #>> Merge X, Y and Subject train and test data into one (column names will be inherited)
    x_y_subject_train <- cbind(x_train,y_train,subject_train)
    x_y_subject_test <- cbind(x_test,y_test,subject_test)
    x_y_subject_both<-rbind(x_y_subject_train,x_y_subject_test)

    #>> Determine mean for X data for each subject and each activity to generate tidy data set
    no_of_xcolumns<-ncol(x_train)                   # number of columns for X data to get mean
    all_means<-aggregate(x_y_subject_both[,1:(no_of_xcolumns)], list
                         (subject=x_y_subject_both$subject,activity=x_y_subject_both$activity),mean )
    all_means<-arrange(all_means,subject,activity)  # arrange tidy data set sort by subject and activity 

    #>> Write tidy data to 2 output file in d:/R data folder
    write.table(all_means, 
                file = "d:/R data/tidy_data_csv.txt",   # Comma separated values file
                row.name=FALSE,sep=",")
    write.table(all_means, 
                file = "d:/R data/tidy_data.txt",       # no separator file
                row.name=FALSE)
    
    #####
    all_mean_column_names <- names (all_means)
    write.table(all_mean_column_names, 
                file = "d:/R data/tidy_data_column_names_csv.txt",   # Comma separated values file
                row.name=FALSE, col.names=FALSE, sep=",")
    
    
##############################################################################
######## The following variable running_steps is just a dummy variable to make it easy to run
######## the run_analysis.R script by cutting and pasting the commands under the lines tagged with "#### Step"
running_steps <- c(
'    #### Step 01 vvvvvvvv
source("d:/R Programming/run_analysis.R")
','  #### Step 02 vvvvvvvv
run_analysis()
')
}
  
