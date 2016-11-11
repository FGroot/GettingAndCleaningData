#****************************************************************************
#You should create one R script called run_analysis.R that does the following.

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#   each variable for each activity and each subject.
#****************************************************************************

#Prepare environment
#Load necessary libraries
library(data.table)
library(reshape2)
library(downloader)
library(knitr)
library(markdown)

#Set working directory
wd<-"C:/RCursus/CleaningData/pga"
setwd(wd)
path<-getwd()


#File download:
path<-paste0(path,"/data")
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<-"ucihar.zip"

if (!file.exists(path)) {
  dir.create(path)
}
download.file(url, file.path(path, destfile))


#File unzip: 
unzip(paste0("./data/",destfile),exdir="./data")

#Get file repository:
pathToDataSet <- file.path(path, "UCI HAR Dataset")
#list.files(pathToDataSet, recursive = TRUE)

#****************************************************************************
#1. Merge the training and the test sets to create one data set.
#****************************************************************************
#Read all the data from the text files
#Subjects:
subj.train <- fread(file.path(pathToDataSet, "train", "subject_train.txt"))
subj.test <- fread(file.path(pathToDataSet, "test", "subject_test.txt"))

#Activity files:
act.train <- fread(file.path(pathToDataSet, "train", "Y_train.txt"))
act.test <- fread(file.path(pathToDataSet, "test", "Y_test.txt"))
act.labels<-fread(file.path(pathToDataSet,"activity_labels.txt"))

#Data files:
data.train <- fread(file.path(pathToDataSet, "train", "X_train.txt"))
data.test <- fread(file.path(pathToDataSet, "test", "X_test.txt"))
#Feature file:
data.features<- fread(file.path(pathToDataSet, "features.txt"))


#Merge train and test data
subjects<-rbind(subj.train,subj.test)
activities<-rbind(act.train,act.test)
data<-rbind(data.train,data.test)

#set names of the data file
names(subjects)<-c("subjectid")
names(activities)<-c("activityid")
subjects_and_activities<-cbind(subjects,activities)

# merge activity labels to actitvity numbers
names(act.labels)<-c("activityid","activityname")
subjects_and_activities<-merge(subjects_and_activities,act.labels,by="activityid",all=TRUE)


#****************************************************************************
#2: Extracts only the measurements on the mean and standard deviation for each measurement.
#****************************************************************************
names(data.features)=c("ID","feature")
#set names of the data file to the feature column of data.features
names(data)<-data.features$feature
#make the extraction of the mean and std of each measurement
data.subset<-data[,grep("subject|activity|mean|std",names(data)),with=FALSE]


#****************************************************************************
#3: Uses descriptive activity names to name the activities in the data set
#****************************************************************************
#Complete the entire set of columns and rows
data.final<-cbind(subjects_and_activities,data.subset)

#set the key
setkeyv(data.final,c("subjectid","activityid"))



#****************************************************************************
#4: Appropriately labels the data set with descriptive variable names.
#****************************************************************************
TidyColumnNames<-colnames(data.final)
for(i in 1:length(TidyColumnNames))
{
  #Acc=Accelleration
  TidyColumnNames[i]<-gsub(pattern="Acc",replacement="Accelleration",x=TidyColumnNames[i])
  #t=time
  TidyColumnNames[i]<-gsub(pattern="^t",replacement="Time_",x=TidyColumnNames[i])
  #f=frequency
  TidyColumnNames[i]<-gsub(pattern="^f",replacement="Freq_",x=TidyColumnNames[i])
  #Mag=Magnitude
  TidyColumnNames[i]<-gsub(pattern="Mag",replacement="Magnitude",x=TidyColumnNames[i])
  #remove ()
  TidyColumnNames[i]<-gsub(pattern="\\()",replacement="",x=TidyColumnNames[i])
  #mean=Mean
  TidyColumnNames[i]<-gsub(pattern="mean",replacement="Mean",x=TidyColumnNames[i])
  #std=StdDev
  TidyColumnNames[i]<-gsub(pattern="std",replacement="StdDev",x=TidyColumnNames[i])
  #-=_
  TidyColumnNames[i]<-gsub(pattern="-",replacement="_",x=TidyColumnNames[i])
  #BodyBody=Body
  TidyColumnNames[i]<-gsub(pattern="([Bb]ody[Bb]ody|[Bb]ody)",replacement="Body",x=TidyColumnNames[i])
}

names(data.final)<-TidyColumnNames

#****************************************************************************
#5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#   each variable for each activity and each subject.
#****************************************************************************
# Remove Activity name column to make the dataset ready for aggregation
data.final.no_activity_name = data.final[,!names(data.final) %in% c('activityname'),with=FALSE]

# Aggregate the Mean and StdDev columns by the key columns
data.final.aggregated = aggregate(data.final.no_activity_name[,!names(data.final.no_activity_name) %in% c('activityid','subjectid'),with=FALSE],
      by=list(activityid=data.final.no_activity_name$activityid, subjectid = data.final.no_activity_name$subjectid),FUN=mean)

# Bind the Activity names column to the tidy dataset and put the column in front of the 
data.final.tidy=merge(act.labels,data.final.aggregated,by="activityid",all=TRUE)

#set the key
setkeyv(data.final.tidy,c("subjectid","activityid"))

# Reorder the columns of the tidy dataset
allcolumns<-names(data.final.tidy)
firstcolumns<-c("activityid","subjectid","activityname")
setcolorder(data.final.tidy, c(firstcolumns, setdiff(allcolumns, firstcolumns)))

# Output the data to a file
outFile <- file.path(getwd(), "Smartphone_sensor_signals_mean_std_averages.csv")
write.csv(data.final.tidy,outFile)

# Generate the codebook
knit("createCodebook.Rmd", output="codebook.md", encoding="ISO8859-1", quiet=TRUE)
markdownToHTML("codebook.md", "codebook.html",stylesheet='codebookstyle.css')


