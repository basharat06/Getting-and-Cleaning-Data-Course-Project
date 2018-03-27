# This script will Make RAW data into "Tidy" and "Clean" data.

## Below steps were performed to clean the data.

* Check and download data from web if not exist in directory.
* Loaded training, test and activity datasets. 
* Merged training and test dataset.
* Loaded feature dataset.
* Extracted only those columns which reflects mean or standard deviation.
* Converted the activity into factor and changed its discription as activity dataset.
* Changed appropriate names of the Variables.
* Transformed dataset with the average of each variable for each activity and each subject.
* Summerize the result dataset by mean and group by activity and subject.
* Export/Write dataset into the file name tidy.txt.
