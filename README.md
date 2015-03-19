# Getting-and-Cleaning-Data-Course-Project


### run_analysis.R explanation

uses plyr library

    1: Read both X train and test data
        (read.table())
    2: Merge the X train and test data to X data
        Just put test data below train data with row binding (rbind())
    3: Rename the data labels with features
        Read the 'features.txt' with the original dataset descriptions and replace X data colnames (colnames(X_data) <- features[,2])
    4: Select only the mean and std related variables
        grepl() to search for the variables with "mean()" and "std()" on name. Fixed = TRUE to avoid meanFreq() variables
    5: Read both Y train and test data
    6: Merge the Y train and test data to Y data
        <Warning!!> Remember to put test data below train data again </Warning!!>
    7: Read both subject train and test data
    8: Merge the subject train and test data to subject data
        <Warning!!> Remember to put test data below train data again </Warning!!>
    9: Merge the subject with Y data
        Use col binding to create subjects and activities columns in the data set (cbind())
    10: Rename the subject-Y data columns to ("subject_id", "activity_id")
    11: Read the descriptive activity names
        Read the 'activity_labels.txt' with the activities names and their number representation
    12: Rename with descriptive activity names
        Replace the activities numbers on subject-Y data for actual names from activity_labels
    13: Merge the subject-Y data with X data to create the dataset
        Column bind (cbind()) to create subject-Y-X data
    14: Rename with appropriate labels (Remove parentheses and substitute dash to underscore)
        using gsub()
    15: 'Export' the dataset (step 4 from Course Project assignment) to environment (creates a variable)
    16: 'Export' the dataset (step 5 from Course Project assignment) to environment (creates a variable)
        uses ddply to calculate the mean (colwise(mean)) groupping by subjects and activities id
