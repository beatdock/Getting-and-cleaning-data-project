##starts with the assumption that this dataset is available in the working directory
##in an unzipped UCI HAR Dataset folder and plyr package is installed
library(plyr)

##extract variables which have the word mean and std
raw_colData <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
sub_1 <- grep("mean|std", raw_colData$V2)
raw_colData_1 <- raw_colData[sub_1,]
sub_2 <- grep("F", raw_colData_1$V2, invert = TRUE)
colData <- raw_colData_1[sub_2,]
colNumbers <- colData$V1
colNames <- colData$V2


readData <- function(type) {
        valuePath <- paste0("UCI HAR Dataset/",type,"/X_",type,".txt")
        activityNumberPath <- paste0("UCI HAR Dataset/",type,"/Y_",type,".txt")
        subjectPath <- paste0("UCI HAR Dataset/",type,"/subject_",type,".txt")
        
        ##read X_data and extract mean and std columns
        valueData <- read.table(valuePath, stringsAsFactors = FALSE)[, colNumbers]
        colnames(valueData) <- colNames
        
        ##read subject_data
        subjectData <- read.table(subjectPath, col.names = c("Subject"))
        
        ##read Y_data and change the values to discreptive activity name
        activityNumber <- read.table(activityNumberPath)
        activityNumber$V2 <- ""
        activityNumber$V2[activityNumber$V1 == 1] <- "Walking"
        activityNumber$V2[activityNumber$V1 == 2] <- "Walking Upstairs"
        activityNumber$V2[activityNumber$V1 == 3] <- "Walking Downstairs"
        activityNumber$V2[activityNumber$V1 == 4] <- "Sitting"
        activityNumber$V2[activityNumber$V1 == 5] <- "Standing"
        activityNumber$V2[activityNumber$V1 == 6] <- "Laying"
        Activity <- activityNumber$V2
        
        ##merge value, subject and activity data
        Data <- cbind(subjectData, Activity, valueData)
        
        ##find means of columns for each combination of subject and activity
        average <- function(data) {
                colMeans(data[, 3:68])
        }
        tidy <- ddply(Data, .(Subject, Activity), average)
        
        tidy
}

##read the tarin and test data
tidy_data <- rbind(readData("train"), readData("test"))

##creat a tidy data in a .txt file
write.table(tidy_data, "tidy_data.txt", sep = ",")
