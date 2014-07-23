features<-read.table("features.txt")
features[,2]<-as.character(features[,2])
names<-vector("character",dim(features)[1])
for (i in 1:dim(features)[1]){
  names[i]<-features[i,2]
}

setwd("./test")
Xtest<-read.table("X_test.txt") ##named the variables in X_test
names(Xtest)<-names

ytest<-read.table("y_test.txt")
names(ytest)<-c("Y")
mytest<-cbind(Xtest,ytest)
subjecttest<-read.table("subject_test.txt")
names(subjecttest)<-c("subject")
mytest<-cbind(mytest,subjecttest)

setwd("../") ##need to move to parent folder
setwd("./train") ##move to "train"
Xtrain<-read.table("X_train.txt")
names(Xtrain)<-names
ytrain<-read.table("y_train.txt")
names(ytrain)<-c("Y")
mytrain<-cbind(Xtrain,ytrain)
subjecttrain<-read.table("subject_train.txt")
names(subjecttrain)<-c("subject")
mytrain<-cbind(mytrain,subjecttrain)

tidydata<-rbind(mytest,mytrain) ##combine test set and training set

setwd("../")
write.table(tidydata,file="./tidydata.txt")

f<-strsplit(features[,2],"\\-") ## split when there is a "-"
split<-vector("character",length(f))
for (i in 1:length(f)){
    split[i]<-f[[i]][2]
}
features1<-cbind(features,split)
features1<-na.omit(features1)
features2<-features1[features1$split=="mean()"|features1$split=="std()",]

tidydata2<-tidydata[,features2[,1]]
tidydata2<-cbind(tidydata2,tidydata[,562:563])
write.table(tidydata2,file="./tidydata2.txt")
