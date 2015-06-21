# datacleaningproject

This file explains how the script works, line by line, and how the tidy data set is created from the collected raw data

# Step by step description for the data cleaning project and how the uploaded run_analysis.R script works

##Intial steps

Set the working directory for R

Downloaded and unzipped all the avialable raw data files into the working directory

Files used for the analysis are:
   *features.txt- Contains the name of variables measured for the respective activities of the subject
   *X_train.txt & X_test.txt- Collected data are put into 2 files, train(70% of data) and test(30% of data)
   *activity_labels.txt- Has the activity label information
   *Y_train.txt, Y_test.txt- Contains the respective activities for train and test data, represented in numbers from 1 to 6
   *subject_train.txt & subject_test.txt-Contains the respective subjects performing the activity, represented in mumbers 1 to 30
   *Other files are the informational files that explains data, how it is recorded etc.

##Line by Line explanation of run_analysis.R

###Line 1 to 2
  *Reads the activity labels and features into R

###Line 4 to 7
  *Reads the test and train subject files into R
  *combines them to one file, called "subject", using rbind() and assign variable name "Subject"
  *dim is [10299 1]

###lines  9 to 12
  *Reads the test and train activity files into R
  *combines them to one file, called "activity", using rbind() and assign variable name "Activity"
  *dim is [10299 1]

###lines 14 to 17
  *Reads the test and train files into R
  *Combines them into one file, called "join" using rbind()
  *Used the data from features.txt and assigned them as variable names for the file "join"
  *dim is [10299 561]

###line 18
  *From the above file "join", only the measurements containing mean and standard deviation are extracted
  *used grep funtion to do this
  *only the variables containing mean() & std() are extracted, which resulted in 66 columns
  *current file is called "test_train_final and has dim [10299 66]

###line 20
  *Acttivity and Subject information stored in files "activity" & "subject" are combined to "test_train_final"
  *This is acheived by using cbind()
  *Combined file is called "data1" and has dim [10299 68]

###lines 22 to 23
  *Current file has the entire raw data that has mean and standard deviation measurements for the subjects and activities.     *Activities are still represneted in numbers.  
  *this for loop replaces all the numbers to the respective activity labels, that is stored in "activity_labels"

### lines 26 to 29 (FInal tidy data set is created in these steps)
  *In order to get the final tidy set, we need the aggregate means for each variable for each activity and each subject
  *This perfomed using melt and dcast functions. Library reshape2 is loaded.
  *Resulted data set is called "dataFinal" and has dimension [180 68]

###Line 31
  *using write.table, with row.names as FALSE and text file is called tidy_data is created
  *Created file is stored in the work directory

###Final Tidy data set (called "dataFinal")
  *Required final tidy data has been created by the script. DIM [180 68]
  *This file has subject, their activities and aggregated mean of mean & standard deviation varaibles selected for each activity and each subject
  *Each row is a diffrent observation
  *There are 68 columns (first column is subject & second column is activity) and each column represent seperate variables. 
  

