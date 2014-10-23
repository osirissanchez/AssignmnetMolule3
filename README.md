Code Description 
1.	The first step of the scrip reads the txt files used in the research
Here is an example of reading the data from the txt
##Reading Data sources
body_acc_x_test<-read.table("test/Inertial Signals/body_acc_x_test.txt")
 This step was repeated for all the text files

2.	The second step was to crated a column in which the mean and sd gets computed, each file includes one measure only. However the txt file divides that single value into different columns because there was several number of lectures per sample every row was one sample, but we need to get the mean of the entire file because the whole file is a single measure, I get the mean by row, and place it in an extra column. Same case for the sd 
Computation of the mean: 
body_acc_x_test$Mean<- apply(body_acc_x_test, 1, mean)
Computation of the sd:
body_acc_x_test$SD<- apply(body_acc_x_test, 1, sd)
This step was repeated for all the text files

3.	After that I created 3 data sets one for the name, the other two has the final calculation of the mean and the sd of each txt file.
Name of every measure
This is just a vector with the names of the measures
Name<-c("body_acc_x_test","body_acc_y_test","body_acc_z_test","body_gyro_x_test","body_gyro_y_test","body_gyro_z_test","total_acc_x_test","total_acc_y_test","total_acc_z_test","body_acc_x_train","body_acc_y_train","body_acc_z_train","body_gyro_x_train","body_gyro_y_train","body_gyro_z_train","total_acc_x_train","total_acc_y_train","total_acc_z_train")
Here I computed the mean of the column I created in step 2, since I have the mean of every row store in a column a just apply the mean of the row  created to get the mean of the whole measure:
  mean(body_acc_x_test$Mean)

 
If a get the mean of every row in a new column and apply the mean to that new column I will get the same answer
 

MEAN<-rbind(mean(body_acc_x_test$Mean),mean(body_acc_y_test$Mean),mean(body_acc_z_test$Mean),mean(body_gyro_x_test$Mean),mean(body_gyro_y_test$Mean),mean(body_gyro_z_test$Mean),mean(total_acc_x_test$Mean),mean(total_acc_y_test$Mean),mean(total_acc_z_test$Mean),mean(body_acc_x_train$Mean),mean(body_acc_y_train$Mean),mean(body_acc_z_train$Mean),mean(body_gyro_x_train$Mean),mean(body_gyro_y_train$Mean),mean(body_gyro_z_train$Mean),mean(total_acc_x_train$Mean),mean(total_acc_y_train$Mean),mean(total_acc_z_train$Mean))
The same principle apply for sd
SD<-rbind(sd(body_acc_x_test$SD),sd(body_acc_y_test$SD),sd(body_acc_z_test$SD),sd(body_gyro_x_test$SD),sd(body_gyro_y_test$SD),sd(body_gyro_z_test$SD),sd(total_acc_x_test$SD),sd(total_acc_y_test$SD),sd(total_acc_z_test$SD),sd(body_acc_x_train$SD),sd(body_acc_y_train$SD),sd(body_acc_z_train$SD),sd(body_gyro_x_train$SD),sd(body_gyro_y_train$SD),sd(body_gyro_z_train$SD),sd(total_acc_x_train$SD),sd(total_acc_y_train$SD),sd(total_acc_z_train$SD)) 

4.	Finally I merge the 3 detaset to create a final table in which I put the name of the measure, its mean and sd
##Integration of the entire info in a single table
FinalTable<-data.frame(Name,MEAN, SD)
names(FinalTable)<-c("Measure","Mean","SD")

5.	It writes the result of the final table into a txt file
##Writes the final file for delivery
write.table(FinalTable, file = "Project.txt", row.name=FALSE)

Variable Description 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test. Therefore we have two types of measures the ones with the training data sample and the ones with the test data sample. From this sample there were three sub samples X,Y,Z

Measure	Meaning 
body_acc_x_test	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the test data sample
body_acc_y_test	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the test data sample
body_acc_z_test	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the test data sample
body_gyro_x_test	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the test data sample
body_gyro_y_test	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the tes data sample
body_gyro_z_test	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the test data sample
total_acc_x_test	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the test data sample
 total_acc_y_test	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the test data sample
total_acc_z_test	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the test data sample
body_acc_x_train	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the training data sample
body_acc_y_train	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the training data sample
body_acc_z_train	The body acceleration signal obtained by subtracting the gravity from the total acceleration from the training data sample
body_gyro_x_train	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the training data sample
body_gyro_y_train	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the training data sample
body_gyro_z_train	The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second from the training data sample
total_acc_x_train	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the training data sample
total_acc_y_train	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the training data sample
total_acc_z_train	The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g' from the training data sample


