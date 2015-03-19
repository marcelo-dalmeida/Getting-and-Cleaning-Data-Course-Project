# CodeBook


## Variables 

prefix 't' to denote time
prefix 'f' to denote frequency domain signals
    
    "1" "subject_id"
        1:30 (30 subjects)
        
    "2" "activity_id"
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
        
    Means and standard daviations (std)
        
        tBodyAcc_XYZ
    "3" "tBodyAcc_mean_X"
    "4" "tBodyAcc_mean_Y"
    "5" "tBodyAcc_mean_Z"
    "6" "tBodyAcc_std_X"
    "7" "tBodyAcc_std_Y"
    "8" "tBodyAcc_std_Z"
        
        tGravity_XYZ
    "9" "tGravityAcc_mean_X"
    "10" "tGravityAcc_mean_Y"
    "11" "tGravityAcc_mean_Z"
    "12" "tGravityAcc_std_X"
    "13" "tGravityAcc_std_Y"
    "14" "tGravityAcc_std_Z"
        
        tBodyAccJerk_XYZ
    "15" "tBodyAccJerk_mean_X"
    "16" "tBodyAccJerk_mean_Y"
    "17" "tBodyAccJerk_mean_Z"
    "18" "tBodyAccJerk_std_X"
    "19" "tBodyAccJerk_std_Y"
    "20" "tBodyAccJerk_std_Z"
        
        tBodyGyro_XYZ
    "21" "tBodyGyro_mean_X"
    "22" "tBodyGyro_mean_Y"
    "23" "tBodyGyro_mean_Z"
    "24" "tBodyGyro_std_X"
    "25" "tBodyGyro_std_Y"
    "26" "tBodyGyro_std_Z"
        
        tBodyGyroJerk_XYZ
    "27" "tBodyGyroJerk_mean_X"
    "28" "tBodyGyroJerk_mean_Y"
    "29" "tBodyGyroJerk_mean_Z"
    "30" "tBodyGyroJerk_std_X"
    "31" "tBodyGyroJerk_std_Y"
    "32" "tBodyGyroJerk_std_Z"
        
        tBodyAccMag
    "33" "tBodyAccMag_mean"
    "34" "tBodyAccMag_std"
        
        tGravityAccMag
    "35" "tGravityAccMag_mean"
    "36" "tGravityAccMag_std"
        
        tBodyAccJerkMag
    "37" "tBodyAccJerkMag_mean"
    "38" "tBodyAccJerkMag_std"
        
        tBodyGyroMag
    "39" "tBodyGyroMag_mean"
    "40" "tBodyGyroMag_std"
        
        tBodyGyroJerkMag
    "41" "tBodyGyroJerkMag_mean"
    "42" "tBodyGyroJerkMag_std"
        
        fBodyAcc_XYZ
    "43" "fBodyAcc_mean_X"
    "44" "fBodyAcc_mean_Y"
    "45" "fBodyAcc_mean_Z"
    "46" "fBodyAcc_std_X"
    "47" "fBodyAcc_std_Y"
    "48" "fBodyAcc_std_Z"
        
        fBodyAccJerk_XYZ
    "49" "fBodyAccJerk_mean_X"
    "50" "fBodyAccJerk_mean_Y"
    "51" "fBodyAccJerk_mean_Z"
    "52" "fBodyAccJerk_std_X"
    "53" "fBodyAccJerk_std_Y"
    "54" "fBodyAccJerk_std_Z"
        
        fBodyGyro_XYZ
    "55" "fBodyGyro_mean_X"
    "56" "fBodyGyro_mean_Y"
    "57" "fBodyGyro_mean_Z"
    "58" "fBodyGyro_std_X"
    "59" "fBodyGyro_std_Y"
    "60" "fBodyGyro_std_Z"
        
        fBodyAccMag
    "61" "fBodyAccMag_mean"
    "62" "fBodyAccMag_std"
        
        fBodyBodyAccJerkMag
    "63" "fBodyBodyAccJerkMag_mean"
    "64" "fBodyBodyAccJerkMag_std"
        
        fBodyBodyGyroMag
    "65" "fBodyBodyGyroMag_mean"
    "66" "fBodyBodyGyroMag_std"
        
        fBodyBodyGyroJerkMag
    "67" "fBodyBodyGyroJerkMag_mean"
    "68" "fBodyBodyGyroJerkMag_std"
  
## The data

    Avarage variables groupping by subjects and activities id
    30*6 = 180 observations, 68 variables
        180x68

## Transformations or work to clean up the data

    see 'run_analýsis.R' explanation on README.md
