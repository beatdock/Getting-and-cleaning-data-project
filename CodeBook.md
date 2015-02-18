#Raw dataset

##Information
* This dataset was collected with a group of 30 volunteers. Each person performed six activities wearing a smartphone. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity datas were captured. The obtained datas have been randomly partitioned into two sets where 70% of the volunteers was selected for generating the training data and 30% the test data. 

* See the `README.txt` file in the `UCI HAR Dataset.zip` for further details.

##Included files
>
* **README.txt**
* **features_info.txt**: Shows information about the variables used on the feature vector.
* **features.txt**: List of all features.
* **activity_labels.txt**: Links the class labels with their activity name.
* **train/X_train.txt**: Training set.
* **train/y_train.txt**: Training labels.
* **test/X_test.txt**: Test set.
* **test/y_test.txt**: Test labels. 
* **train/subject_train.txt**
* **train/Inertial Signals/total_acc_x_train.txt**
* **train/Inertial Signals/body_acc_x_train.txt**
* **train/Inertial Signals/body_gyro_x_train.txt**

>-README.txt

* See the `README.txt` file in the `UCI HAR Dataset.zip` for further details.

##Variables
* The time domain signals come form the accelerometer and gyroscope 3-axial
     * tBodyAcc-XYZ
     * tGravityAcc-XYZ
     * tBodyGyro-XYZ
* The jerk signals
    * tBodyAccJerk-XYZ
    * tBodyGyroJerk-XYZ
* The magnitude of time domain and jerk signals
     * tBodyAccMag
     * tGravityAccMag
     * tBodyAccJerkMag
     * tBodyGyroMag
     * tBodyGyroJerkMag
* The fast fourier Transform applied signals
     * fBodyAcc-XYZ
     * fBodyAccJerk-XYZ
     * fBodyGyro-XYZ
     * fBodyAccMag
     * fBodyAccJerkMag
     * fBodyGyroMag
     * fBodyGyroJerkMag
* **The set of variables that were estimated from these signals**
     * mean(): Mean value
     * std(): Standard deviation
     * mad(): Median absolute deviation
     * max(): Largest value in array
     * min(): Smallest value in array
     * sma(): Signal magnitude area
     * energy(): Energy measure. Sum of the squares divided by the number of values.
     * iqr(): Interquartile range
     * entropy(): Signal entropy
     * arCoeff(): Autorregresion coefficients with Burg order equal to 4
     * correlation(): correlation coefficient between two signals
     * maxInds(): index of the frequency component with largest magnitude
     * meanFreq(): Weighted average of the frequency components to obtain a mean frequency
     * skewness(): skewness of the frequency domain signal
     * kurtosis(): kurtosis of the frequency domain signal
     * bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
     * angle(): Angle between to vectors.
* See the `feauters_info.txt` file in the `UCI HAR Dataset.zip` for further details.
* You can see the complete list of vairables in the `features.txt` file in the `UCI HAR Dataset.zip`

#Tidy data

##Information
* This tidy data is the data which has measurements on mean and std splited in groups by activity and subject and calculated about the column means for every group.

* **The process to creat tidy data**
    1. Extract the columns on mean and std from `X-data` file
    2. Merge extracted data with `Y-data` file(activity data) and change values in `Y-data` to descriptive activity name
    3. Merge `subject-data` file to above data
    4. Find the mean value of columns for each combination of activity and subject
    5. Carry out this process for both `train` and `test` dataset and merge them

##Variables
* **Subject**: The identifier of the subjects 1~30
* **Activity**: The label of the activity performed in the experiments (walking, walking upstairs, walking downstairs, sitting, standing, laying)
* **xx-mean()-xx**: extraced measurements on the mean from the raw dataset
     * tBodyAcc-mean()-X
     * tBodyAcc-mean()-Y
     * tBodyAcc-mean()-Z
     * tGravityAcc-mean()-X
     * tGravityAcc-mean()-Y
     * tGravityAcc-mean()-Z
     * tBodyAccJerk-mean()-X
     * tBodyAccJerk-mean()-Y
     * tBodyAccJerk-mean()-Z
     * tBodyGyro-mean()-X
     * tBodyGyro-mean()-Y
     * tBodyGyro-mean()-Z
     * tBodyGyroJerk-mean()-X
     * tBodyGyroJerk-mean()-Y
     * tBodyGyroJerk-mean()-Z
     * tBodyAccMag-mean()
     * tGravityAccMag-mean()
     * tBodyAccJerkMag-mean()
     * tBodyGyroMag-mean()
     * tBodyGyroJerkMag-mean()
     * fBodyAcc-mean()-X
     * fBodyAcc-mean()-Y
     * fBodyAcc-mean()-Z
     * fBodyAccJerk-mean()-X
     * fBodyAccJerk-mean()-Y
     * fBodyAccJerk-mean()-Z
     * fBodyGyro-mean()-X
     * fBodyGyro-mean()-Y
     * fBodyGyro-mean()-Z
     * fBodyAccMag-mean()
     * fBodyBodyAccJerkMag-mean()
     * fBodyBodyGyroMag-mean()
     * fBodyBodyGyroJerkMag-mean()
* **xx-std()-xx**: extraced measurements on the standard deviation from the raw dataset
     * tBodyAcc-std()-X
     * tBodyAcc-std()-Y
     * tBodyAcc-std()-Z
     * tGravityAcc-std()-X
     * tGravityAcc-std()-Y
     * tGravityAcc-std()-Z
     * tBodyAccJerk-std()-X
     * tBodyAccJerk-std()-Y
     * tBodyAccJerk-std()-Z
     * tBodyGyro-std()-X
     * tBodyGyro-std()-Y
     * tBodyGyro-std()-Z
     * tBodyGyroJerk-std()-X
     * tBodyGyroJerk-std()-Y
     * tBodyGyroJerk-std()-Z
     * tBodyAccMag-std()
     * tGravityAccMag-std()
     * tBodyAccJerkMag-std()
     * tBodyGyroMag-std()
     * tBodyGyroJerkMag-std()
     * fBodyAcc-std()-X
     * fBodyAcc-std()-Y
     * fBodyAcc-std()-Z
     * fBodyAccJerk-std()-X
     * fBodyAccJerk-std()-Y
     * fBodyAccJerk-std()-Z
     * fBodyGyro-std()-X
     * fBodyGyro-std()-Y
     * fBodyGyro-std()-Z
     * fBodyAccMag-std()
     * fBodyBodyAccJerkMag-std()
     * fBodyBodyGyroMag-std()
     * fBodyBodyGyroJerkMag-std()

