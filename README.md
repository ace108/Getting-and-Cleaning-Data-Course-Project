# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project

## OBJECTIVE: to prepare tidy data that can be used for later analysis.  
## 1) a tidy data set as described below, 
## 2) a link to a Github repository with script for performing the analysis, 
## 3) a code book that describes the variables, the data, and any transformations or 
##    work that you performed to clean up the data called CodeBook.md. 
##    You should also include a README.md in the repo with your scripts. 
##    This repo explains how all of the scripts work and how they are connected.  

    ## The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
    ## A full description is available at the site where the data was obtained: 
    ##     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    ## Here are the data for the project: 
    ##     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

    ## Create one R script called run_analysis.R that does the following. 
    ## Merges the training and the test sets to create one data set.
    ## Extracts only the measurements on the mean and standard deviation for each measurement. 
    ## Uses descriptive activity names to name the activities in the data set
    ## Appropriately labels the data set with descriptive variable names. 
    ## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


    library("dplyr")
    setwd("D:/R data/UCI HAR Dataset")
    
    #>> Getting X data
    features <- read.table("features.txt")
    names(features) <- c('feature_id', 'feature_name')
    mean_or_std_column_no<- 
        grep("*mean\\(\\)|*std\\(\\)", features$feature_name) # search mean or std columns only   
    
    x_train <- read.table("train/X_train.txt")
    names(x_train)<-features$feature_name 
    x_train <- x_train[, mean_or_std_column_no] 
    
    x_test <- read.table("test/X_test.txt")
    names(x_test)<-features$feature_name
    x_test <- x_test[, mean_or_std_column_no] 
    
    no_of_xcolumns<-ncol(x_train)
    
    
    #>> Getting Y data
    activities <- read.table("activity_labels.txt")
    names(activities) <- c('activity_id', 'activity_name')
    
    y_train <- read.table("train/Y_train.txt")
    y_train$V1<-activities[y_train$V1, 2]
    names(y_train)<-'activity'
    
    y_test <- read.table("test/Y_test.txt")
    y_test$V1<-activities[y_test$V1, 2]
    names(y_test)<-'activity'
    
    #>> Getting SUBJECT data

    x_y_subject_train <- cbind(x_train,y_train,subject_train)
    x_y_subject_test <- cbind(x_test,y_test,subject_test)
    x_y_subject_both<-rbind(x_y_subject_train,x_y_subject_test)

    all_means<-aggregate(x_y_subject_both[,1:(no_of_xcolumns)], list
                         (subject=x_y_subject_both$subject,activity=x_y_subject_both$activity),mean )
    all_means<-arrange(all_means,subject,activity)
    write.table(all_means, file = "../tidy_data.txt",row.name=FALSE)
    write.table(all_means, file = "../tidy_data_csv.txt",row.name=FALSE,sep=",")
    

