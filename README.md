# Getting and Cleaning Data Course Project

## OBJECTIVE
To prepare tidy data that can be used for later analysis from the source data represent data collected from the accelerometers from the Samsung S smartphone. 

A full description is available at the site where the data was obtained:<BR>
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <BR>
The zip file containing data is downloaded from: <BR>
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <BR>

This repo contains three items for the project:
README.md <BR>
Codebook <BR>
run_analysis.R <BR>

## SOLUTION

Download the zip file to D:\R Data <BR>
Unzip the downloaded file "getdata_projectfiles_UCI HAR Dataset.zip <BR>
A folder "D:\R Data\UCI HAR Dataset" will be created and contains the data and description of the data files.<BR>

run_analysis.R is a script created with a function run_analysis to process and clean the data to produce the tidy data.
The run_analysis.R script is created in the D:\R Programming folder.<BR>
For details of how the script process the source data, refer to the Code Book in this repo. 

Commands for running the script in R or R studio are:
> source("d:/R Programming/run_analysis.R") <BR>
> run_analysis() <BR>

After running the run_analysis function, there will 3 output files in the D:\R Data folder: <BR>
1. tidy_data_csv.txt          - this file contains the tidy data separated by "," (comma) <BR>
2. tidy_data_tsv.txt          - this file contains the tidy data separated by TAB <BR>
3. tidy_data_column_names.txt - this file contains the column names of the tidy data set which can be used for inclusion into the Code Book  <BR>

