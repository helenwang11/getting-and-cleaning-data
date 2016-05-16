# getting-and-cleaning-data

to run the script, put the script in the directory "UCI HAR Dataset".
on commandline, run:
rscript run_analysis.R

the scirpt should output 2 files called "tidy.txt" ad "tidy_mean.txt" in the "UCI HAR Dataset" directory.

the script does the following:

1. read in the train data and the test data
2. assign subjectID to each data entry
3. assign descriptive activity name to each data entry
4. assign variable name to each data entry
5. select variable names containing "mean" or "Mean" or "std"
6. rename the variables with more descriptive variable names (output file: tidy.txt)
7. calculate average for each variable for each subject ID for each activity (output file: tidy_mean.txt)
