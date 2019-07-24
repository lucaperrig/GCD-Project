# Codebook

This document details the variables contained in the dataset _averages.txt_

## Introduction

This table displays the averages of the 27 means and standard deviations of accelerations and orientation along three axes recorded on 30 patients in six different positions.

## Variables

*labels is a categorical displaying the activity (walking, walking upstairs, walking downstairs, sitting, and laying)
*subject displays the individual taking the test. Each person has a number from 1 to 30.
*The following variables are indicating the type of measure that is taken, notably whether it is acceleration or orientation. The labels are set such that if it contains "mean" it is an average, and if it contains "std" it is a standard deviation.

## Measures

As measures taken in this experiment are fairly technical for anyone not familiar with physics, the detail of the measures is here taken from the words of the authors.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.