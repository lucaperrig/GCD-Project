library(dplyr)

#Read text files train
Xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
subtrain <- read.table("subject_train.txt")

#Read text files test
Xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")
subtest <- read.table("subject_test.txt")

#Merge files
train <- cbind(ytrain, subtrain, Xtrain)
test <- cbind(ytest, subtest, Xtest)
df <- rbind(train, test)

#Convert to tbl
colnames(df)[1] <- "labels"
colnames(df)[2] <- "subject"
tbl <- tbl_df(df)

#Activity names
tbl$labels <- factor(tbl$labels, levels = c(1:6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#Variables names
features <- read.table("features.txt", colClasses = c("numeric", "character"))
colnames(tbl)[3:dim(tbl)[2]] <- features[,2]

#Select means and stds
ids <- c(1, 2, (grep(pattern = 'mean\\(|std\\(', x = features[,2])+2))
tbl <- tbl[,ids]

#Averages per subject and activity
avgs <- group_by(tbl, labels, subject) %>%
  summarise_at(vars(3:68), mean)

#Writing the dataset
write.table(avgs, file="averages.txt", row.name=FALSE)
