#1st method:from path
omni1 = read.csv(./data/salesqty.csx)
head(omni1)

#2nd Method : from CSV file
omni2 = read.csv(file.choose())
head(omni2)


#3rd Method : from gsheet 
library(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3 = as.data.frame(gsheet::gsheet2tbl(url))
head(omni3)


# Import the dataset
df1 = read.csv('./data/logistic.csv')
head(df1)

url="https://docs.google.com/spreadsheets/d/1Md_ro2t3M7nA9JMH1DsE12jfeX7qq-UPw6p8WQd6A2Y/edit#gid=120271978"
library(gsheet)
df2 = as.data.frame(gsheet2tbl(url))
head(df2)

dataset=df2  #or df2 if data is imported from google sheets
head(dataset)
str(dataset)
summary(dataset)
dim(dataset)
View(dataset)
dataset$gender = factor(dataset$gender)
