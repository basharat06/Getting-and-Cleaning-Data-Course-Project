

## Below code will make data tidy and clean and output will be stored in "Tidy.txt"

##Loading "dplyr" package.

library(dplyr)

## Checking and Downloading data from server.

fUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

ZipData <- "UCI HAR Dataset.zip"



if (!file.exists(ZipData)) {
    
    download.file(fUrl, ZipData, mode = "wb")
    
}



## Checking if file exists then unziping data from "ZipData"

fileName <- "UCI HAR Dataset"

if (!file.exists(fileName)) {
    
    unzip(ZipData)
    
}


# Reading training data

trngSub <- read.table(file.path(fileName, "train", "subject_train.txt"))

trngVal <- read.table(file.path(fileName, "train", "X_train.txt"))

trngAct <- read.table(file.path(fileName, "train", "y_train.txt"))


# Reading test data

testSub <- read.table(file.path(fileName, "test", "subject_test.txt"))

testVal <- read.table(file.path(fileName, "test", "X_test.txt"))

testAct <- read.table(file.path(fileName, "test", "y_test.txt"))


# Reading activity labels.

act_Lbl <- read.table("UCI HAR Dataset/activity_labels.txt")

act_Lbl[,2] <- as.character(act_Lbl[,2])


#### 1- Merges the training and the test sets to create one data set. ####

trngData <- cbind(trngSub, trngAct, trngVal)

testData <- cbind(testSub, testAct, testVal)

compData <- rbind(trngData, testData)

colnames(compData) <- c("subject", "activity")


#### 2- Extracts only the measurements on the mean and standard deviation for each measurement. ####

# Reading activity features.

ftrData <- read.table("UCI HAR Dataset/features.txt")

ftrData[,2] <- as.character(ftrData[,2])


# Reading data of "mean" and "standard deviation".

Mn_SD <- grep(".*mean.*|.*std.*", ftrData[,2])

Mn_SD_names <- ftrData[Mn_SD,2]

Mn_SD_names = gsub('-mean', 'Mean', Mn_SD_names)

Mn_SD_names = gsub('-std', 'Std', Mn_SD_names)

Mn_SD_names <- gsub('[-()]', '', Mn_SD_names)

Mn_SD <- union(c(1,2) , Mn_SD + 2)

compData <- compData[, Mn_SD]

colnames(compData) <- c("subject", "activity", Mn_SD_names)


#### 3- Uses descriptive activity names to name the activities in the data set. ####

compData$activity <- factor(compData$activity, levels = act_Lbl[,1], labels = act_Lbl[,2])



#### 4- Appropriately labels the data set with descriptive variable names. ####


VarName <- colnames(compData)

VarName <- gsub("[\\(\\)-]", "", VarName)


# Set Appropriate names of the Variables.

VarName <- gsub("^f", "Frequency_Domain", VarName)

VarName <- gsub("^t", "Time_Domain", VarName)

VarName <- gsub("Acc", "Accelerometer", VarName)

VarName <- gsub("Gyro", "Gyroscope", VarName)

VarName <- gsub("Mag", "Magnitude", VarName)

VarName <- gsub("Freq", "Frequency", VarName)

VarName <- gsub("mean", "Mean", VarName)

VarName <- gsub("std", "Standard_Deviation", VarName)

VarName <- gsub("BodyBody", "Body", VarName)

colnames(compData) <- VarName


#### 5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ####

# group by subject and activity and summarise using mean

compGrp_Means <- compData %>% 
    
group_by(subject, activity) %>%
    
summarise_all(funs(mean))


#### Exporting to file ####

write.table(compGrp_Means, "tidy.txt", row.names = FALSE, quote = FALSE)

