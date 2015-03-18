# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project

## OBJECTIVE: 
To prepare tidy data that can be used for later analysis from the source data represent data collected from the accelerometers from the Samsung S smartphone. 

A full description is available at the site where the data was obtained:        
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The zip file containing data is downloaded from: 
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Download the zip file to D:\R Data
Unzip the downloaded file "getdata_projectfiles_UCI HAR Dataset.zip"
A folder "D:\R Data\UCI HAR Dataset" will be created and contains the data and description of the data files.

run_analysis.R is a script created with a function run_analysis to process and clean the data and produce two output files.
The run_analysis.R script is created in the D:\R Programming folder.
For details of how the script process the source data, refer to the Code Book in this repo. 

Commands for running the script in R or R studio are:
> source("d:/R Programming/run_analysis.R")
> run_analysis()

After running the run_analysis function, the following output files will be created in the D:\R Data folder:
1. tidy_data_csv.txt  - this file contains the tidy data separated by "," (comma)
2. tidy_data.txt      - this file contains the tidy 

