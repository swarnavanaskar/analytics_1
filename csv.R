#check for files and folders
dir('./data2')
list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")

#Reading from a Flat File into a vector
list.files('./data2')
data= scan("./data2/name.txt",what = "character")
data1= scan("./data2/hhe.txt",what = "character")
head(data)
head(data1)


#csv read from csv
#First Creat as csv file from iris data set
head(iris)
?iris
write.csv(iris, "./data/iris.csv", row.names = F)
#goto folder data and see iris.csv

read1=read.csv(file = "./data/iris.csv", header = TRUE, sep = ",")
str(read1);class(read1)


#Import from Google Sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#Import from Excel
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx")
df_excel2b

#more