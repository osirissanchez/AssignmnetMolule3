##Reading Data sources
body_acc_x_test<-read.table("test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test<-read.table("test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test<-read.table("test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test<-read.table("test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test<-read.table("test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test<-read.table("test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x_test<-read.table("test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test<-read.table("test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test<-read.table("test/Inertial Signals/total_acc_z_test.txt")
body_acc_x_train<-read.table("train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train<-read.table("train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train<-read.table("train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train<-read.table("train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train<-read.table("train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train<-read.table("train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x_train<-read.table("train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train<-read.table("train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train<-read.table("train/Inertial Signals/total_acc_z_train.txt")

##the file incluedes one value only however the txt file divedes that single value
##into diferent columns but we need to get the mean of the entire file because
##the whole file is a single variable, I get the mean by row, and place it in
## an extra column after that a get the mean of the column to get the mean of the
##entire file


body_acc_x_test$Mean<- apply(body_acc_x_test, 1, mean)
body_acc_y_test$Mean<- apply(body_acc_y_test, 1, mean)
body_acc_z_test$Mean<- apply(body_acc_z_test, 1, mean)
body_gyro_x_test$Mean<- apply(body_gyro_x_test, 1, mean)
body_gyro_y_test$Mean<- apply(body_gyro_y_test, 1, mean)
body_gyro_z_test$Mean<- apply(body_gyro_z_test, 1, mean)
total_acc_x_test$Mean<- apply(total_acc_x_test, 1, mean)
total_acc_y_test$Mean<- apply(total_acc_y_test, 1, mean)
total_acc_z_test$Mean<- apply(total_acc_z_test, 1, mean)
body_acc_x_train$Mean<- apply(body_acc_x_train, 1, mean)
body_acc_y_train$Mean<- apply(body_acc_y_train, 1, mean)
body_acc_z_train$Mean<- apply(body_acc_z_train, 1, mean)
body_gyro_x_train$Mean<- apply(body_gyro_x_train, 1, mean)
body_gyro_y_train$Mean<- apply(body_gyro_y_train, 1, mean)
body_gyro_z_train$Mean<- apply(body_gyro_z_train, 1, mean)
total_acc_x_train$Mean<- apply(total_acc_x_train, 1, mean)
total_acc_y_train$Mean<- apply(total_acc_y_train, 1, mean)
total_acc_z_train$Mean<- apply(total_acc_z_train, 1, mean)

body_acc_x_test$SD<- apply(body_acc_x_test, 1, sd)
body_acc_y_test$SD<- apply(body_acc_y_test, 1, sd)
body_acc_z_test$SD<- apply(body_acc_z_test, 1, sd)
body_gyro_x_test$SD<- apply(body_gyro_x_test, 1, sd)
body_gyro_y_test$SD<- apply(body_gyro_y_test, 1, sd)
body_gyro_z_test$SD<- apply(body_gyro_z_test, 1, sd)
total_acc_x_test$SD<- apply(total_acc_x_test, 1, sd)
total_acc_y_test$SD<- apply(total_acc_y_test, 1, sd)
total_acc_z_test$SD<- apply(total_acc_z_test, 1, sd)
body_acc_x_train$SD<- apply(body_acc_x_train, 1, sd)
body_acc_y_train$SD<- apply(body_acc_y_train, 1, sd)
body_acc_z_train$SD<- apply(body_acc_z_train, 1, sd)
body_gyro_x_train$SD<- apply(body_gyro_x_train, 1, sd)
body_gyro_y_train$SD<- apply(body_gyro_y_train, 1, sd)
body_gyro_z_train$SD<- apply(body_gyro_z_train, 1, sd)
total_acc_x_train$SD<- apply(total_acc_x_train, 1, sd)
total_acc_y_train$SD<- apply(total_acc_y_train, 1, sd)
total_acc_z_train$SD<- apply(total_acc_z_train, 1, sd)


## Cretion of Fata sets for the Mean and SD  and the Name of each measure
Name<-c("body_acc_x_test","body_acc_y_test","body_acc_z_test",
"body_gyro_x_test","body_gyro_y_test","body_gyro_z_test",
"total_acc_x_test","total_acc_y_test","total_acc_z_test",
"body_acc_x_train","body_acc_y_train","body_acc_z_train",
"body_gyro_x_train","body_gyro_y_train","body_gyro_z_train",
"total_acc_x_train","total_acc_y_train","total_acc_z_train")


MEAN<-rbind(mean(body_acc_x_test$Mean),mean(body_acc_y_test$Mean),mean(body_acc_z_test$Mean),
mean(body_gyro_x_test$Mean),mean(body_gyro_y_test$Mean),mean(body_gyro_z_test$Mean),
mean(total_acc_x_test$Mean),mean(total_acc_y_test$Mean),mean(total_acc_z_test$Mean),
mean(body_acc_x_train$Mean),mean(body_acc_y_train$Mean),mean(body_acc_z_train$Mean),
mean(body_gyro_x_train$Mean),mean(body_gyro_y_train$Mean),mean(body_gyro_z_train$Mean),
mean(total_acc_x_train$Mean),mean(total_acc_y_train$Mean),mean(total_acc_z_train$Mean))


SD<-rbind(sd(body_acc_x_test$SD),sd(body_acc_y_test$SD),sd(body_acc_z_test$SD),
sd(body_gyro_x_test$SD),sd(body_gyro_y_test$SD),sd(body_gyro_z_test$SD),
sd(total_acc_x_test$SD),sd(total_acc_y_test$SD),sd(total_acc_z_test$SD),
sd(body_acc_x_train$SD),sd(body_acc_y_train$SD),sd(body_acc_z_train$SD),
sd(body_gyro_x_train$SD),sd(body_gyro_y_train$SD),sd(body_gyro_z_train$SD),
sd(total_acc_x_train$SD),sd(total_acc_y_train$SD),sd(total_acc_z_train$SD))

##Integration of the entire info in a single table
FinalTable<-data.frame(Name,MEAN, SD)
names(FinalTable)<-c("Measure","Mean","SD")

##Writes the final file for delivery
write.table(FinalTable, file = "Project.txt", row.name=FALSE)  