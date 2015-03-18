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
3. Subset X data for only mean and std columns  <BR>
4. Get Y data into variables y_train and y_test  <BR>
5. Give Y data descriptive meaning  <BR>
6. Name column for Y data variable  <BR>
7. Get SUBJECT data into variables subject_train and subject_test  <BR>
8. Name column for subject data variable  <BR>
9. Merge X, Y and Subject train and test data into one (column names will be inherited)  <BR>
10. Determine mean for X data for each subject and each activity to generate tidy data set in variable all_means  <BR>
11. Write tidy data to 2 output file in d:/R data folder <BR>
A. tidy_data_csv.txt" - Comma separated values file containing the tidy data <BR>
B. tidy_data.txt"     - File without separator containing the tidy data <BR>
12. Save column names of the variable all_means in variable all_mean_column_names <BR>
13. Write variable all_mean_column_names to "d:/R data/tidy_data_column_names_csv.txt"  <BR>
14. The data of file created in step 13 can be included in the Code Book.  <BR>
    
Commands for running the run_analysis function  in R or R studio are: <BR>
> source("d:/R Programming/run_analysis.R") <BR>
> run_analysis() <BR>

# Output

On completion of run_analysis function, there will 3 output files in the D:\R Data folder:  <BR>
 1. tidy_data_csv.txt - this file contains the tidy data separated by "," (comma)  <BR>
 2. tidy_data_tsv.txt - this file contains the tidy data separated by TAB  <BR>
 3. tidy_data_column_names.txt - this file contains the column names of the tidy data set which can be used for inclusion into the Code Book <BR>
 
The resulting data in tidy_data_csv.txt and tidy_data_tsv.txt consist of only the mean of all mean and std columns of the X data for each activity and subject.  The columns are: <BR>
subject<BR>
activity<BR>
tBodyAcc-mean()-X<BR>
tBodyAcc-mean()-Y<BR>
tBodyAcc-mean()-Z<BR>
tBodyAcc-std()-X<BR>
tBodyAcc-std()-Y<BR>
tBodyAcc-std()-Z<BR>
tGravityAcc-mean()-X<BR>
tGravityAcc-mean()-Y<BR>
tGravityAcc-mean()-Z<BR>
tGravityAcc-std()-X<BR>
tGravityAcc-std()-Y<BR>
tGravityAcc-std()-Z<BR>
tBodyAccJerk-mean()-X<BR>
tBodyAccJerk-mean()-Y<BR>
tBodyAccJerk-mean()-Z<BR>
tBodyAccJerk-std()-X<BR>
tBodyAccJerk-std()-Y<BR>
tBodyAccJerk-std()-Z<BR>
tBodyGyro-mean()-X<BR>
tBodyGyro-mean()-Y<BR>
tBodyGyro-mean()-Z<BR>
tBodyGyro-std()-X<BR>
tBodyGyro-std()-Y<BR>
tBodyGyro-std()-Z<BR>
tBodyGyroJerk-mean()-X<BR>
tBodyGyroJerk-mean()-Y<BR>
tBodyGyroJerk-mean()-Z<BR>
tBodyGyroJerk-std()-X<BR>
tBodyGyroJerk-std()-Y<BR>
tBodyGyroJerk-std()-Z<BR>
tBodyAccMag-mean()<BR>
tBodyAccMag-std()<BR>
tGravityAccMag-mean()<BR>
tGravityAccMag-std()<BR>
tBodyAccJerkMag-mean()<BR>
tBodyAccJerkMag-std()<BR>
tBodyGyroMag-mean()<BR>
tBodyGyroMag-std()<BR>
tBodyGyroJerkMag-mean()<BR>
tBodyGyroJerkMag-std()<BR>
fBodyAcc-mean()-X<BR>
fBodyAcc-mean()-Y<BR>
fBodyAcc-mean()-Z<BR>
fBodyAcc-std()-X<BR>
fBodyAcc-std()-Y<BR>
fBodyAcc-std()-Z<BR>
fBodyAccJerk-mean()-X<BR>
fBodyAccJerk-mean()-Y<BR>
fBodyAccJerk-mean()-Z<BR>
fBodyAccJerk-std()-X<BR>
fBodyAccJerk-std()-Y<BR>
fBodyAccJerk-std()-Z<BR>
fBodyGyro-mean()-X<BR>
fBodyGyro-mean()-Y<BR>
fBodyGyro-mean()-Z<BR>
fBodyGyro-std()-X<BR>
fBodyGyro-std()-Y<BR>
fBodyGyro-std()-Z<BR>
fBodyAccMag-mean()<BR>
fBodyAccMag-std()<BR>
fBodyBodyAccJerkMag-mean()<BR>
fBodyBodyAccJerkMag-std()<BR>
fBodyBodyGyroMag-mean()<BR>
fBodyBodyGyroMag-std()<BR>
fBodyBodyGyroJerkMag-mean()<BR>
fBodyBodyGyroJerkMag-std()<BR>







