activity_labels<-read.table("activity_labels.txt")      
features<-read.table("features.txt")                    

subject_test<-read.table("./test/subject_test.txt")     
subject_train<-read.table("./train/subject_train.txt")
subject<-rbind(subject_test,subject_train)
names(subject)<-"Subject"

test_activity<-read.table("./test/y_test.txt")
train_activity<-read.table("./train/y_train.txt")                                                    
activity<-rbind(test_activity,train_activity)
names(activity)<-"Activity"

test_data<-read.table("./test/X_test.txt")
train_data<-read.table("./train/X_train.txt")
join<-rbind(test_data,train_data)
names(join)<-features[,2]
test_train_final<-join[,sort(c(grep("mean()",colnames(join),fixed=TRUE),grep("std()",colnames(join),fixed=TRUE)))]

data1<-cbind(subject,activity,test_train_final)

for(i in 1:6){
        data1[data1$Activity==i,2]<-as.character(activity_labels[i,2])
}

library(reshape2)
names<-names(data1[,3:68])
data1_melt<-melt(data1,id=c("Subject","Activity"),measure.vars=names)
dataFinal<-dcast(data1_melt,Subject+Activity~variable,mean)

write.table(dataFinal,"tidy_data.txt",row.names=FALSE)

