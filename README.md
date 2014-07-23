courseragetdataassignment
=========================

Coursera Getting and Cleaning Data Course project 

How the script run_analysis.R works:
* Step 1: Assign features.txt to data frame features and classify the 2nd column of features as character;
* Step 2: Assign X_test.txt to data frame Xtest and name the variables in Xtest along with the values in the 2nd column of features;
* Step 3: Assign y_test.txt to data frame ytest and name it as "Y";
* Step 4: Assign subject_test.txt to data frame subjecttest and name it as "subject";
* Step 5: Combine Xtest, ytest and subjecttest by column to have a whole testing set data frame - "mytest";
* Step 6: Repeat step 2 to 5 to create data frames Xtrain, ytrain, subjecttrain and finally get the training set data frame -"mytrain";
* Step 7: Combine mytest with mytrain by row to get the first tidy data set, named "tidydata";
* Step 8: Split the values in column 2 of data frame features by function strsplit with the rules that when there is a "-", break string at the "-" and omit the "-";
* Step 9: Pick up the 2nd value of each breaking in step 8 and name the new character vector as "split";
* Step 10: Combine split with features by column and remove all NA rows and name the new data frame as "features1";
* Step 11: Subset features1 to create a new data frame features2 that its values in column split are equal to "mean()" or "std()" only;
* Step 12: Use values in the first column of data frame features2 as the index of tidydata (created in step 7) to indicate the columns should be included in a new data frame "tidydata2";
* Step 13: Add column "Y" and column "subject" of tidydata to the data frame got in step 12 and the final data frame tidydata2 is done;
* Step 14: Save tidydata2 to computer with the name "tidydata2.txt".
