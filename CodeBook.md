# Code Book

## Introduction

Code written to convert/make RAW data into "Tidy" and "Clean" data.

## Below steps were performed to clean the data.

* Check and download data from web if not exist in directory.
* Loaded training, test and activity datasets. 
* Merged training and test dataset.
* Loaded feature dataset.
* Extracted only those columns which reflects mean or standard deviation.
* Converted the activity into factor and changed its discription as activity dataset.
* Changed appropriate names of the Variables.
* Transformed dataset with the average of each variable for each activity and each subject.
* Summerize the result dataset by mean and group by activity and subject.
* Export/Write dataset into the file name tidy.txt.

## Variables name

*	subject
*	activity
*	Time_DomainBodyAccelerometerMeanX
*	Time_DomainBodyAccelerometerMeanY
*	Time_DomainBodyAccelerometerMeanZ
*	Time_DomainBodyAccelerometerStdX
*	Time_DomainBodyAccelerometerStdY
*	Time_DomainBodyAccelerometerStdZ
*	Time_DomainGravityAccelerometerMeanX
*	Time_DomainGravityAccelerometerMeanY
*	Time_DomainGravityAccelerometerMeanZ
*	Time_DomainGravityAccelerometerStdX
*	Time_DomainGravityAccelerometerStdY
*	Time_DomainGravityAccelerometerStdZ
*	Time_DomainBodyAccelerometerJerkMeanX
*	Time_DomainBodyAccelerometerJerkMeanY
*	Time_DomainBodyAccelerometerJerkMeanZ
*	Time_DomainBodyAccelerometerJerkStdX
*	Time_DomainBodyAccelerometerJerkStdY
*	Time_DomainBodyAccelerometerJerkStdZ
*	Time_DomainBodyGyroscopeMeanX
*	Time_DomainBodyGyroscopeMeanY
*	Time_DomainBodyGyroscopeMeanZ
*	Time_DomainBodyGyroscopeStdX
*	Time_DomainBodyGyroscopeStdY
*	Time_DomainBodyGyroscopeStdZ
*	Time_DomainBodyGyroscopeJerkMeanX
*	Time_DomainBodyGyroscopeJerkMeanY
*	Time_DomainBodyGyroscopeJerkMeanZ
*	Time_DomainBodyGyroscopeJerkStdX
*	Time_DomainBodyGyroscopeJerkStdY
*	Time_DomainBodyGyroscopeJerkStdZ
*	Time_DomainBodyAccelerometerMagnitudeMean
*	Time_DomainBodyAccelerometerMagnitudeStd
*	Time_DomainGravityAccelerometerMagnitudeMean
*	Time_DomainGravityAccelerometerMagnitudeStd
*	Time_DomainBodyAccelerometerJerkMagnitudeMean
*	Time_DomainBodyAccelerometerJerkMagnitudeStd
*	Time_DomainBodyGyroscopeMagnitudeMean
*	Time_DomainBodyGyroscopeMagnitudeStd
*	Time_DomainBodyGyroscopeJerkMagnitudeMean
*	Time_DomainBodyGyroscopeJerkMagnitudeStd
*	Frequencyuency_DomainBodyAccelerometerMeanX
*	Frequencyuency_DomainBodyAccelerometerMeanY
*	Frequencyuency_DomainBodyAccelerometerMeanZ
*	Frequencyuency_DomainBodyAccelerometerStdX
*	Frequencyuency_DomainBodyAccelerometerStdY
*	Frequencyuency_DomainBodyAccelerometerStdZ
*	Frequencyuency_DomainBodyAccelerometerMeanFrequencyX
*	Frequencyuency_DomainBodyAccelerometerMeanFrequencyY
*	Frequencyuency_DomainBodyAccelerometerMeanFrequencyZ
*	Frequencyuency_DomainBodyAccelerometerJerkMeanX
*	Frequencyuency_DomainBodyAccelerometerJerkMeanY
*	Frequencyuency_DomainBodyAccelerometerJerkMeanZ
*	Frequencyuency_DomainBodyAccelerometerJerkStdX
*	Frequencyuency_DomainBodyAccelerometerJerkStdY
*	Frequencyuency_DomainBodyAccelerometerJerkStdZ
*	Frequencyuency_DomainBodyAccelerometerJerkMeanFrequencyX
*	Frequencyuency_DomainBodyAccelerometerJerkMeanFrequencyY
*	Frequencyuency_DomainBodyAccelerometerJerkMeanFrequencyZ
*	Frequencyuency_DomainBodyGyroscopeMeanX
*	Frequencyuency_DomainBodyGyroscopeMeanY
*	Frequencyuency_DomainBodyGyroscopeMeanZ
*	Frequencyuency_DomainBodyGyroscopeStdX
*	Frequencyuency_DomainBodyGyroscopeStdY
*	Frequencyuency_DomainBodyGyroscopeStdZ
*	Frequencyuency_DomainBodyGyroscopeMeanFrequencyX
*	Frequencyuency_DomainBodyGyroscopeMeanFrequencyY
*	Frequencyuency_DomainBodyGyroscopeMeanFrequencyZ
*	Frequencyuency_DomainBodyAccelerometerMagnitudeMean
*	Frequencyuency_DomainBodyAccelerometerMagnitudeStd
*	Frequencyuency_DomainBodyAccelerometerMagnitudeMeanFrequency
*	Frequencyuency_DomainBodyAccelerometerJerkMagnitudeMean
*	Frequencyuency_DomainBodyAccelerometerJerkMagnitudeStd
*	Frequencyuency_DomainBodyAccelerometerJerkMagnitudeMeanFrequency
*	Frequencyuency_DomainBodyGyroscopeMagnitudeMean
*	Frequencyuency_DomainBodyGyroscopeMagnitudeStd
*	Frequencyuency_DomainBodyGyroscopeMagnitudeMeanFrequency
*	Frequencyuency_DomainBodyGyroscopeJerkMagnitudeMean
*	Frequencyuency_DomainBodyGyroscopeJerkMagnitudeStd
*	Frequencyuency_DomainBodyGyroscopeJerkMagnitudeMeanFrequency



