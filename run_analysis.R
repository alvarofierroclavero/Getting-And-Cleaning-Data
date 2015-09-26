setwd("C:/Users/Usuario/Google Drive/R programming/3. Getting and Cleaning Data/Data/UCI HAR Dataset")

# Packages required
#install.packages("readr")

# Libraries
#library(readr)

# Read test files
setwd("test")

###### Read X_test.txt, Y_test.txt, subject_test.txt and change column names
X<-read.table("X_test.txt",header=F)
Y<-read.table("Y_test.txt",header=F)
subject_test<-read.table("subject_test.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(X)<-paste("X",names(X),sep="$")
names(Y)<-paste("Y",names(Y),sep="$")
#names(subject_test)<-paste("subject_test",names(subject_test),sep="$")

###### Grab subjects that underwent the "test" tests

factor_test<-levels(as.factor(subject_test$V1))

# Read Inertial Signals
setwd("Inertial Signals")

###### Read body_acc
body_acc_x<-read.table("body_acc_x_test.txt",header=F)
body_acc_y<-read.table("body_acc_y_test.txt",header=F)
body_acc_z<-read.table("body_acc_z_test.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(body_acc_x)<-paste("body_acc_x",names(body_acc_x),sep="$")
names(body_acc_y)<-paste("body_acc_y",names(body_acc_y),sep="$")
names(body_acc_z)<-paste("body_acc_z",names(body_acc_z),sep="$")

###### Read body_gyro
body_gyro_x<-read.table("body_gyro_x_test.txt",header=F)
body_gyro_y<-read.table("body_gyro_y_test.txt",header=F)
body_gyro_z<-read.table("body_gyro_z_test.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(body_gyro_x)<-paste("body_gyro_x",names(body_gyro_x),sep="$")
names(body_gyro_y)<-paste("body_gyro_y",names(body_gyro_y),sep="$")
names(body_gyro_z)<-paste("body_gyro_z",names(body_gyro_z),sep="$")

###### Read total_acc
total_acc_x<-read.table("total_acc_x_test.txt",header=F)
total_acc_y<-read.table("total_acc_y_test.txt",header=F)
total_acc_z<-read.table("total_acc_z_test.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(total_acc_x)<-paste("total_acc_x",names(total_acc_x),sep="$")
names(total_acc_y)<-paste("total_acc_y",names(total_acc_y),sep="$")
names(total_acc_z)<-paste("total_acc_z",names(total_acc_z),sep="$")

###### Merge all test files into a single dataframe
test = data.frame(subject_test,Y,X,
                  body_acc_x,body_acc_y,body_acc_z,
                  body_gyro_x,body_gyro_y,body_gyro_z,
                  total_acc_x,total_acc_y,total_acc_z)

# Some valid values of the dataframe
# test$X.V1, test$X.V1[1], test$X.V1[1500], test$X.V2[1500], test$Y.V1[1]
# test$body_acc_z.V121[15]


###### Read train files

setwd("C:/Users/Usuario/Google Drive/R programming/3. Getting and Cleaning Data/Data/UCI HAR Dataset/train")

###### Read X_train.txt, Y_train.txt, subject_train.txt and change column names
X<-read.table("X_train.txt",header=F)
Y<-read.table("Y_train.txt",header=F)
subject_train<-read.table("subject_train.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(X)<-paste("X",names(X),sep="$")
names(Y)<-paste("Y",names(Y),sep="$")
#names(subject_train)<-paste("subject_train",names(subject_train),sep="$")

###### Grab subjects that underwent the "train" tests
factor_train<-levels(as.factor(subject_train$V1))

# Read Inertial Signals
setwd("Inertial Signals")

###### Read body_acc
body_acc_x<-read.table("body_acc_x_train.txt",header=F)
body_acc_y<-read.table("body_acc_y_train.txt",header=F)
body_acc_z<-read.table("body_acc_z_train.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(body_acc_x)<-paste("body_acc_x",names(body_acc_x),sep="$")
names(body_acc_y)<-paste("body_acc_y",names(body_acc_y),sep="$")
names(body_acc_z)<-paste("body_acc_z",names(body_acc_z),sep="$")

###### Read body_gyro
body_gyro_x<-read.table("body_gyro_x_train.txt",header=F)
body_gyro_y<-read.table("body_gyro_y_train.txt",header=F)
body_gyro_z<-read.table("body_gyro_z_train.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(body_gyro_x)<-paste("body_gyro_x",names(body_gyro_x),sep="$")
names(body_gyro_y)<-paste("body_gyro_y",names(body_gyro_y),sep="$")
names(body_gyro_z)<-paste("body_gyro_z",names(body_gyro_z),sep="$")

###### Read total_acc
total_acc_x<-read.table("total_acc_x_train.txt",header=F)
total_acc_y<-read.table("total_acc_y_train.txt",header=F)
total_acc_z<-read.table("total_acc_z_train.txt",header=F)

###### Appropriately labels the data set with descriptive variable names.
names(total_acc_x)<-paste("total_acc_x",names(total_acc_x),sep="$")
names(total_acc_y)<-paste("total_acc_y",names(total_acc_y),sep="$")
names(total_acc_z)<-paste("total_acc_z",names(total_acc_z),sep="$")



###### Merge all test files into a single dataframe
train = data.frame(subject_train,Y,X,
                  body_acc_x,body_acc_y,body_acc_z,
                  body_gyro_x,body_gyro_y,body_gyro_z,
                  total_acc_x,total_acc_y,total_acc_z)

###### Remove variables that have already been inserted into the dataframes
rm(X,Y)
rm(body_acc_x,body_acc_y,body_acc_z)
rm(body_gyro_x,body_gyro_y,body_gyro_z)
rm(total_acc_x,total_acc_y,total_acc_z)

###### Merge both data sets

test_train<-rbind(test,train)

# Some valid values of the dataframe
# test_train$body_acc_z.V121[10298]

###### Define mean and standard deviation functions
col_mean <- function(x) mean(x)
col_sd <- function(x) sd(x)

###### Load plyr library
library(plyr)

###### Compute mean and standard deviation on dataframe. This is one of the points of the assignment
test_train_means<-colwise(col_mean)(test_train)
test_train_sd<-colwise(col_sd)(test_train)

# Grab activities
activities<-levels(as.factor(test_train$Y.V1))

# Grab individuals
individuals<-levels(as.factor(test_train$V1))

# The column containing the individuals is test_train$V1, 
# and ranges from 1 to 30. As the test and the train datasets
# have been merged but not ordered, the sequence is the following
# first, the test individuals: 2,4,9,10,12,13,18,20,24
# then, the train ones: 1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29,30

# Create the tidy dataset with with the average of each 
# variable for each activity and each subject
tidy_dataset<-c()

# Loop for columns. I split the dataset along the activities (test_train$Y.V1) and 
# the individuals (test_train$V1) and perform the mean of the columns (with colMeans).
# Each column is appended to the tidy dataset 

for (i in 3:dim(test_train)[2]) {
   tidy_dataset<-cbind(tidy_dataset,
                       sapply(split(test_train[i],list(test_train$Y.V1,test_train$V1)),colMeans))
}

# The columns of the resulting matrix are renamed accordingly
colnames(tidy_dataset)<-names(test_train)[3:dim(test_train)[2]]

# The dataset is sorted by name. The name od the rows is as following:
# activity.individual.X.V1, for example: 2.20.X.V1, contains the average
# for activity 6 of individual 20, each column contains 1715 variables
ordered_tidy_dataset<-tidy_dataset[order(row.names(tidy_dataset)),]

# Tidy the row names removing last 5 characters, then the name of the rows will be activity.individual, 
# for instance "6.30" means activity number 6 corresponding to individual number 30.
tidy_name <- function(x) substr(x,1,nchar(x)-5)
row.names(ordered_tidy_dataset)<-lapply(row.names(ordered_tidy_dataset),tidy_name)

setwd("C:/Users/Usuario/Google Drive/R programming/3. Getting and Cleaning Data/Data")
write.table(ordered_tidy_dataset,file="tidy_dataset.txt",row.names = FALSE)
