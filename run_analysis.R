## 1. Merges the training and the test sets to create one data set.
# read data into R. merge test and training data sets. 

# read in the activity labels
activities <- read.csv("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
# read in features labels
features <- read.csv("./data/UCI HAR Dataset/features.txt", header = FALSE, sep = "")

# reading X_test and X_train.
xTestData <- read.csv("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
xTrainData <- read.csv("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")

# read y_test and y_train. These are activities for X_test and X_train
yTestActivities <- read.csv("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
yTrainActivities <- read.csv("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")

# read test ID
testSubjectId <- read.csv("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")

# read training ID
trainingSubjectId <- read.csv("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")

## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
## 3. Uses descriptive activity names to name the activities in the data 
##    set.
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy 
##    data set with the average of each variable for each activity and 
##    each subject.