---
title: "README"
author: "Rian Kurnia"
date: "May 13, 2018"
output: pdf_document
---

# README

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The analysis script works as follows:
======================================
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For each record it is provided:
======================================

- SubjectID             : Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- Activity              : Activities performed by each person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
- timeBodyAcc.XYZ.mean  : The mean of time of body acceleration signals
- timeBodyAcc.XYZ.std   : The standard deviation of time of body acceleration signals

- timeGravityAcc.XYZ.mean     : The mean of Time of gravity acceleration signals
- timeGravityAcc.XYZ.std: The standard deviation of Time of gravity acceleration signals

- timeBodyAccJerk.XYZ.mean    : The mean of Time of body linear acceleration from Jerk signals
- timeBodyAccJerk.XYZ.std     : The standard deviation of Time of body linear acceleration from Jerk signals

- timeBodyGyro.XYZ.mean       : The mean of Time of angular velocity signals
- timeBodyGyro.XYZ.std        : The standard deviation of Time of angular velocity signals

- timeBodyGyroJerk.XYZ.mean   : The mean of Time of angular velocity from Jerk signals
- timeBodyGyroJerk.XYZ.std    : The standard deviation of Time of angular velocity from Jerk signals

- timeBodyAccMag.mean   : The mean of Magnitude of three-dimensional signals of body acceleration time
- timeBodyAccMag.std    : The standard deviation of Magnitude of three-dimensional signals of body acceleration time

- timeGravityAccMag.mean: The mean of Magnitude of three-dimensional signals of gravity accelaration time
- timeGravityAccMag.std : The standard deviation of Magnitude of three-dimensional signals of gravity accelaration time

- timeBodyAccJerkMag.mean     : The mean of Magnitude of three-dimensional from jerk signals of time of body linear accelaration
- timeBodyAccJerkMag.std      : The standard deviation of Magnitude of three-dimensional from jerk signals of time of body linear accelaration

- timeBodyGyroMag.mean  : The mean of Magnitude of three-dimensional signals of time of angular velocity
- timeBodyGyroMag.std   : The standard deviation of Magnitude of three-dimensional signals of time of angular velocity

- timeBodyGyroJerkMag.mean    : The mean of Magnitude of three-dimensional from jerk signals of time of angular velocity
- timeBodyGyroJerkMag.std     : The standard deviation of Magnitude of three-dimensional from jerk signals of time of angular velocity

- freqBodyAcc.XYZ.mean  : The mean of Frequency of body accelaration signals
- freqBodyAcc.XYZ.std   : The standard deviation of Frequency of body accelaration signals

- freqBodyAccJerk.XYZ.mean    : The mean of frequency of body accelration from jerk signals
- freqBodyAccJerk.XYZ.std     : The standard deviation of frequency of body accelration from jerk signals

- freqBodyGyro.XYZ.mean : The mean of frequency of body angular velocity signals
- freqBodyGyro.XYZ.std  : The standard deviation of frequency of body angular velocity signals

- freqBodyAccMag.mean   : The mean of frequency of magnitude of body accelaration signals
- freqBodyAccMag.std    : The standard deviation of frequency of magnitude of body accelaration signals

- freqBodyAccJerkMag.mean     : The mean of frequency of magnitude of body accelaration from jerk signals
- freqBodyAccJerkMag.std      : The standard deviation of frequency of magnitude of body accelaration from jerk signals

- freqBodyGyroMag.mean  : The mean of frequency of magnitude of body angular velocity signals
- freqBodyGyroMag.std   : The standard deviation of frequency of magnitude of body angular velocity signals

- freqBodyGyroJerkMag.mean    : The mean of frequency of magnitude of body angular velocity from jerk signals
- freqBodyGyroJerkMag.std     : The standard deviation of frequency of magnitude of body angular velocity from jerk signals
