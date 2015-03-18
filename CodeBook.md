# Data source
# Getting-and-Cleaning-Data-Course-Project

## OBJECTIVE
To prepare tidy data that can be used for later analysis from the source data represent data collected from the accelerometers from the Samsung S smartphone. 

A full description is available at the site where the data was obtained:<BR>
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <BR>
The zip file containing data is downloaded from: <BR>
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <BR>

## SOLUTION
Download the zip file to D:\R Data
Unzip the downloaded file "getdata_projectfiles_UCI HAR Dataset.zip"
A folder "D:\R Data\UCI HAR Dataset" will be created and contains the data and description of the data files.

run_analysis.R is a script created with a function run_analysis to process and clean the data to produce the tiday data.
The run_analysis.R script is created in the D:\R Programming folder.
For details of how the script process the source data, refer to the Code Book in this repo. 

Commands for running the script in R or R studio are:
> source("d:/R Programming/run_analysis.R") <BR>
> run_analysis() <BR>

After running the run_analysis function, the tidy data will be output to two output files in the D:\R Data folder: <BR>
1. tidy_data_csv.txt  - this file contains the tidy data separated by "," (comma) <BR>
2. tidy_data.txt      - this file contains the tidy data without separator<BR>

describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. 

## 3) a code book that describes the variables, the data, and any transformations or 
##    work that you performed to clean up the data called CodeBook.md. description of the data files.

##    You should also include a README.md in the repo with your scripts. 
##    This repo explains how all of the scripts work and how they are connected.  





