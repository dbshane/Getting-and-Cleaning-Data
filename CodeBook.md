# CodeBook

## Original data and features selection
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## After processing with run_analysis.R
The train and test set are merged together, and only the measurements on the mean and standard deviation for each measurement were extracted (79 measurements).

The activity labels (1 through 6) were then replaced by descriptive activity names, and the variable names were replaced with more descriptive names.

Data set named "tidy" shows the average of each variable for each activity and each subject.

## Variables
 [1] "SubjectID"                                                                              
 [2] "ActivityID"                                                                             
 [3] "Time domain body acceleration mean value on X-axis"                                     
 [4] "Time domain body acceleration mean value on Y-axis"                                     
 [5] "Time domain body acceleration mean value on Z-axis"                                     
 [6] "Time domain body acceleration standard deviation on X-axis"                             
 [7] "Time domain body acceleration standard deviation on Y-axis"                             
 [8] "Time domain body acceleration standard deviation on Z-axis"                             
 [9] "Time domain gravity acceleration mean value on X-axis"                                  
[10] "Time domain gravity acceleration mean value on Y-axis"                                  
[11] "Time domain gravity acceleration mean value on Z-axis"                                  
[12] "Time domain gravity acceleration standard deviation on X-axis"                          
[13] "Time domain gravity acceleration standard deviation on Y-axis"                          
[14] "Time domain gravity acceleration standard deviation on Z-axis"                          
[15] "Time domain body acceleration Jerk signals mean value on X-axis"                        
[16] "Time domain body acceleration Jerk signals mean value on Y-axis"                        
[17] "Time domain body acceleration Jerk signals mean value on Z-axis"                        
[18] "Time domain body acceleration Jerk signals standard deviation on X-axis"                
[19] "Time domain body acceleration Jerk signals standard deviation on Y-axis"                
[20] "Time domain body acceleration Jerk signals standard deviation on Z-axis"                
[21] "Time domain body angular velocity mean value on X-axis"                                 
[22] "Time domain body angular velocity mean value on Y-axis"                                 
[23] "Time domain body angular velocity mean value on Z-axis"                                 
[24] "Time domain body angular velocity standard deviation on X-axis"                         
[25] "Time domain body angular velocity standard deviation on Y-axis"                         
[26] "Time domain body angular velocity standard deviation on Z-axis"                         
[27] "Time domain body angular velocity Jerk signals mean value on X-axis"                    
[28] "Time domain body angular velocity Jerk signals mean value on Y-axis"                    
[29] "Time domain body angular velocity Jerk signals mean value on Z-axis"                    
[30] "Time domain body angular velocity Jerk signals standard deviation on X-axis"            
[31] "Time domain body angular velocity Jerk signals standard deviation on Y-axis"            
[32] "Time domain body angular velocity Jerk signals standard deviation on Z-axis"            
[33] "Time domain body acceleration magnitude mean value"                                     
[34] "Time domain body acceleration magnitude standard deviation"                             
[35] "Time domain gravity acceleration magnitude mean value"                                  
[36] "Time domain gravity acceleration magnitude standard deviation"                          
[37] "Time domain body acceleration Jerk signals magnitude mean value"                        
[38] "Time domain body acceleration Jerk signals magnitude standard deviation"                
[39] "Time domain body angular velocity magnitude mean value"                                 
[40] "Time domain body angular velocity magnitude standard deviation"                         
[41] "Time domain body angular velocity Jerk signals magnitude mean value"                    
[42] "Time domain body angular velocity Jerk signals magnitude standard deviation"            
[43] "Frequency domain body acceleration mean value on X-axis"                                
[44] "Frequency domain body acceleration mean value on Y-axis"                                
[45] "Frequency domain body acceleration mean value on Z-axis"                                
[46] "Frequency domain body acceleration standard deviation on X-axis"                        
[47] "Frequency domain body acceleration standard deviation on Y-axis"                        
[48] "Frequency domain body acceleration standard deviation on Z-axis"                        
[49] "Frequency domain body acceleration frequency mean value on X-axis"                      
[50] "Frequency domain body acceleration frequency mean value on Y-axis"                      
[51] "Frequency domain body acceleration frequency mean value on Z-axis"                      
[52] "Frequency domain body acceleration Jerk signals mean value on X-axis"                   
[53] "Frequency domain body acceleration Jerk signals mean value on Y-axis"                   
[54] "Frequency domain body acceleration Jerk signals mean value on Z-axis"                   
[55] "Frequency domain body acceleration Jerk signals standard deviation on X-axis"           
[56] "Frequency domain body acceleration Jerk signals standard deviation on Y-axis"           
[57] "Frequency domain body acceleration Jerk signals standard deviation on Z-axis"           
[58] "Frequency domain body acceleration Jerk signals frequency mean value on X-axis"         
[59] "Frequency domain body acceleration Jerk signals frequency mean value on Y-axis"         
[60] "Frequency domain body acceleration Jerk signals frequency mean value on Z-axis"         
[61] "Frequency domain body angular velocity mean value on X-axis"                            
[62] "Frequency domain body angular velocity mean value on Y-axis"                            
[63] "Frequency domain body angular velocity mean value on Z-axis"                            
[64] "Frequency domain body angular velocity standard deviation on X-axis"                    
[65] "Frequency domain body angular velocity standard deviation on Y-axis"                    
[66] "Frequency domain body angular velocity standard deviation on Z-axis"                    
[67] "Frequency domain body angular velocity frequency mean value on X-axis"                  
[68] "Frequency domain body angular velocity frequency mean value on Y-axis"                  
[69] "Frequency domain body angular velocity frequency mean value on Z-axis"                  
[70] "Frequency domain body acceleration magnitude mean value"                                
[71] "Frequency domain body acceleration magnitude standard deviation"                        
[72] "Frequency domain body acceleration magnitude frequency mean value"                      
[73] "Frequency domain body body acceleration Jerk signals magnitude mean value"              
[74] "Frequency domain body body acceleration Jerk signals magnitude standard deviation"      
[75] "Frequency domain body body acceleration Jerk signals magnitude frequency mean value"    
[76] "Frequency domain body body angular velocity magnitude mean value"                       
[77] "Frequency domain body body angular velocity magnitude standard deviation"               
[78] "Frequency domain body body angular velocity magnitude frequency mean value"             
[79] "Frequency domain body body angular velocity Jerk signals magnitude mean value"          
[80] "Frequency domain body body angular velocity Jerk signals magnitude standard deviation"  
[81] "Frequency domain body body angular velocity Jerk signals magnitude frequency mean value"