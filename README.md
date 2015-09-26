The program run_analysis.R performs the following tasks:

1- Reads the test (X_test.txt, Y_test.txt, subject_test.txt) and 
   the train (X_train.txt, Y_train.txt, subject_train.txt) files.

2- Appropriately labels the data set with descriptive variable names.
   
3- Creates a test and a train dataframe after reading.

4- Merges both dataframes into a new one which is called «test_train».

5- Creates the mean and the standard deviation functions and performs the calculations
   with the help of the colwise function. The results are stored in «test_train_means» and
   «test_train_sd».
   
6- Splits the dataframe in order to perform means by activity (range 1-6) and individual 
   (range 1-30) with the help of «sapply» and «colMeans» functions. The means are stored
   in the «tidy_dataset» dataframe.
   
7- Orders the rows alphabetically (1,12,13, ... 2,20,21 ...) and renames them so that a row 
   called «6.25» contains activity number 6 carried out by individual number 25. The structure
   is called «ordered_tidy_dataset».
   
8- Writes the table without row names (as demanded) into a file called "tidy_dataset.txt"
   
 
