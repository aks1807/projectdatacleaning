#CODEBOOK

##Project Description:
* Created a tidy data set from the given raw data. Variables in the final tidy data set are the subject who volunteered, their respective activities and the aggregated mean of the various signals used from the raw data( explained below in detail in the "Creating Tidy Data" section).
* Dimension of the final tidy data is [180 * 68]

##Study design and data processing

###Collection of the raw data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

##Creating the tidy datafile

*Created a raw data set using all the collected raw data (train data, test data, respective subjects & activities)
*Replaced activities, currently reprensented as number, with the actual activity label
*Added descriptive variables to the created raw data file and named all the variables
*Extracted all the variables that measures the mean and standard deviation
*DImension of the current data avaialable is [10299 * 68]
*Tidy data is derived from this by calculating aggregated means of each varialble for each activity and each subject
*Current tidy data set has dimension [180 * 68]



##Variable names and description

####Subject
*The subject who performed the activity
*Total 30 volunteers performed the acivities and are reporesent by 1 to 30
*Unit- Integer
####Activity
*Contains the activity performed by each subject
*WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING are the six activities performed
*Unit- Character
####tBodyAcc-mean()-X
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####tBodyAcc-mean()-Y
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####tBodyAcc-mean()-Z
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####tBodyAcc-std()-X
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standarad deviation estimated from signals on X axis
*no units
####tBodyAcc-std()-Y
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standarad deviation estimated from signals on Y axis
*no units
####tBodyAcc-std()-Z
*Body acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standarad deviation estimated from signals on Z axis
*no units
####tGravityAcc-mean()-X
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####tGravityAcc-mean()-Y
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####tGravityAcc-mean()-Z
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####tGravityAcc-std()-X
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####tGravityAcc-std()-Y
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####tGravityAcc-std()-Z
*gravity acceralation signal, seperated from the accerelation signal by using another low pass Butterworth filter with a corner frequency of 0.3 Hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####tBodyAccJerk-mean()-X
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####tBodyAccJerk-mean()-Y
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####tBodyAccJerk-mean()-Z
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####tBodyAccJerk-std()-X
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####tBodyAccJerk-std()-Y
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####tBodyAccJerk-std()-Z
*body acceleration jerk signal, obatained by deriving in time the body linear acceleration signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####tBodyGyro-mean()-X
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no unit
####tBodyGyro-mean()-Y
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####tBodyGyro-mean()-Z
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####tBodyGyro-std()-X
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####tBodyGyro-std()-Y
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####tBodyGyro-std()-Z
*body angular velocity signal, captured using embedded gryroscope at a constant rate of 50hz
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####tBodyGyroJerk-mean()-X
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####tBodyGyroJerk-mean()-Y
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####tBodyGyroJerk-mean()-Z
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####tBodyGyroJerk-std()-X
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####tBodyGyroJerk-std()-Y
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####tBodyGyroJerk-std()-Z
*body angular velocity jerk signal, obatained by deriving in time the body angular velocity signal
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####tBodyAccMag-mean()
*body acceleration signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####tBodyAccMag-std()
*body acceleration signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####tGravityAccMag-mean()
*Gravity acceleration signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####tGravityAccMag-std()
*Gravity acceleration signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####tBodyAccJerkMag-mean()
*body acceleration jerk signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####tBodyAccJerkMag-std()
*body acceleration jerk signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####tBodyGyroMag-mean()
*body angualar velocity signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####tBodyGyroMag-std()
*body angualar velocity signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####tBodyGyroJerkMag-mean()
*body angular velocity jerk signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####tBodyGyroJerkMag-std()
*body angular velocity jerk signal magnitude, calculated using Euclidean norm
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####fBodyAcc-mean()-X
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####fBodyAcc-mean()-Y
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####fBodyAcc-mean()-Z
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####fBodyAcc-std()-X
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####fBodyAcc-std()-Y
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####fBodyAcc-std()-Z
*Frequency domain Body acceralation signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####fBodyAccJerk-mean()-X
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####fBodyAccJerk-mean()-Y
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####fBodyAccJerk-mean()-Z
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####fBodyAccJerk-std()-X
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####fBodyAccJerk-std()-Y
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####fBodyAccJerk-std()-Z
*Frequency domain Body acceralation jerk signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####fBodyGyro-mean()-X
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on X axis
*no units
####fBodyGyro-mean()-Y
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Y axis
*no units
####fBodyGyro-mean()-Z
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals on Z axis
*no units
####fBodyGyro-std()-X
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on X axis
*no units
####fBodyGyro-std()-Y
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Y axis
*no units
####fBodyGyro-std()-Z
*Frequency domain Body angular velocity signal, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals on Z axis
*no units
####fBodyAccMag-mean()
*Frequency domain Body acceralation signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals 
*no units
####fBodyAccMag-std()
*Frequency domain Body acceralation signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####fBodyBodyAccJerkMag-mean()
*Frequency domain Body acceralation jerk signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####fBodyBodyAccJerkMag-std()
*Frequency domain Body acceralation jerk signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####fBodyBodyGyroMag-mean()
*Frequency domain Body aangular velocity signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####fBodyBodyGyroMag-std()
*Frequency domain Body angular velocity signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units
####fBodyBodyGyroJerkMag-mean()
*Frequency domain Body angular velocity jerk signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the mean estimated from signals
*no units
####fBodyBodyGyroJerkMag-std()
*Frequency domain Body anuglar velocity jerk signal magnitude, obtained by applying Fast Fourier Transform
*Column represent the aggreagated mean of the standard deviation estimated from signals
*no units

