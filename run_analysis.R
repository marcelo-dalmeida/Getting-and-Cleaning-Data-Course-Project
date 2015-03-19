run_analysis <- function()
{
    library(plyr)
    
    ## Read the X data
    X_train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
    X_test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
    
    ## Merge the X data
    X_data <- rbind(X_train_data, X_test_data)
    
    ## Rename the data labels with features
    features <- read.table("UCI HAR Dataset/features.txt")
    colnames(X_data) <- features[,2]
    
    ## Select only the mean and std related variables
    X_data <- X_data[,grepl("mean()", names(X_data), fixed = TRUE) | grepl("std()", names(X_data))]
    
    ## Read the Y data
    Y_train_data <- read.table("UCI HAR Dataset/train/Y_train.txt")
    Y_test_data <- read.table("UCI HAR Dataset/test/Y_test.txt")
    
    ## Merge the Y data
    Y_data <- rbind(Y_train_data, Y_test_data)
    
    ## Read the subject data
    subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt")
    subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt")
    
    ## Merge the subject data
    subject_data <- rbind(subject_train_data, subject_test_data)
    
    ## Merge the subject data with the Y data
    subject_Y_data <- cbind(subject_data, Y_data)
    
    ## Rename the subject and Y data column
    colnames(subject_Y_data) <- c("subject_id","activity_id")
    
    ## Read the descriptive activity names
    activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
    
    ## Rename with descriptive activity names
    subject_Y_data[,2] <- activity_labels[subject_Y_data[,2], 2]
    
    ## Merge the subject and Y data with the X data
    subject_Y_X_data <- cbind(subject_Y_data, X_data)
    
    ##  Rename with appropriate labels (Remove parentheses and substitute dash to underscore)
    colnames(subject_Y_X_data) <- gsub("\\(\\)", "", names(subject_Y_X_data))
    colnames(subject_Y_X_data) <- gsub("-", "_", names(subject_Y_X_data))
    
    ## 'Export' the dataset (Step 4)
    subject_Y_X_data <<- subject_Y_X_data
    
    ## 'Export' the dataset (Step 4)
    subject_Y_X_data_step5 <<- ddply(subject_Y_X_data, .(subject_id, activity_id), colwise(mean))
    
    return(subject_Y_X_data_step5)
}