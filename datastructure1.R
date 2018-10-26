# Data Structures in R

#control+enter when you are in the line to execute
# Vectors-----
x=1:10   #create seq of nos from 1 to 10
x
(x1 <- 1:20)

(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a',"SWARNAVA","4"))
class(x3b)

 
class(x4)

#access elements
(x6 = seq(0,100,by=3))
methods(class='numeric')
?seq
#[1]  0  2  4  6  8 10
ls()  #variables in my environment
x6
length(x6)
x6[20]
x6[3]  # access 3rd element
x6[seq(1, length(x6),2)]
#[1] 4
x6[c(2, 4)]     # access 2nd and 4th element
x6[-1]          # access all but 1st element
x6[-c(1:10, 15:20)]
x6[c(2, -4)]    # cannot mix positive and negative integers
#Error in x[c(2, -4)] : only 0's may be mixed with negative subscripts
x6[c(2.4, 3.54)]    # real numbers are truncated to integers
x6[-c(1,5,20)]
x6
length(x6)


(x= rnorm(100, mean = 60, sd=10))
summary(x)
quantile(x)
quantile(x,seq(0,1, 0.1)) #decile
quantile(x, seq(0,1, 0.01))#percentile
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
stem(x)
hist(x)


#sort, order
set.seed(246)
(x6 = sample(1:20)) b
sort(x6)

#DataFrame----
#create Vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
table(gender)
prop.table(table(gender))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks ; marks2; course



#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)
df2[marks>50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df2[marks>50 & gender=='F', c(1,2)]


