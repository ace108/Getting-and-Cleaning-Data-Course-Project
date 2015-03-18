# Data source
The source data represent data collected from the accelerometers from the Samsung S smartphone. 
A full description is available at the site where the data was obtained:<BR>
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <BR>
The zip file containing data is downloaded from: <BR>
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <BR>

# Transformation

Download the zip file to D:\R Data
Unzip the downloaded file "getdata_projectfiles_UCI HAR Dataset.zip"
A folder "D:\R Data\UCI HAR Dataset" will be created and contains the data and description of the data files.

run_analysis.R is a script created in the D:\R Programming folder.  In th script, the function run_analysis will process and clean the data to produce the tidy data as follow:<BR>
1. Get X data into variables <BOLD>x_train</BOLD> and <BOLD>x_test</BOLD> <BR>
2. Name columns for X data variables <BR>
3. Subset X data for only mean and std columns
4. Get Y data into variables y_train and y_test
5. Give Y data descriptive meaning
6. Name column for Y data variable
7. Get SUBJECT data into variables subject_train and subject_test
8. Name column for subject data variable
9. Merge X, Y and Subject train and test data into one (column names will be inherited)
10. Determine mean for X data for each subject and each activity to generate tidy data set in variable all_means 
11. Write tidy data to 2 output file in d:/R data folder <BR>
A. tidy_data_csv.txt" - Comma separated values file containing the tidy data <BR>
B. tidy_data.txt"     - File without separator containing the tidy data <BR>
12. Save column names of the variable all_means in variable all_mean_column_names 
13. Write variable all_mean_column_names to "d:/R data/tidy_data_column_names_csv.txt"
14. The data of file created in step 13 can be included in the Code Book.
    
Commands for running the run_analysis function  in R or R studio are:
> source("d:/R Programming/run_analysis.R") <BR>
> run_analysis() <BR>

# Output
On completion of run_analysis function, there will 3 output files in the D:\R Data folder: 
 1. tidy_data_csv.txt - this file contains the tidy data separated by "," (comma) 
 2. tidy_data_tsv.txt - this file contains the tidy data separated by TAB 
 3. tidy_data_column_names.txt - this file contains the column names of the tidy data set which can be used for inclusion into the Code Book 
 


