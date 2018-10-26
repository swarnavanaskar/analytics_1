#starting to work in R

# assign----
x1 = 3
x2 <-- 3
#print values
x1
x2
#assign and Print
(x3=3)
#environment----
#variables in env
ls()
# datasets available for me
data()
women
data(women)
?women
?mtcars
mtcars
women$weight
mtcars$mpg
attach(mtcars)
mgp
# libraries currently loaded
library()

#creat values
1:100
seq(0,100, by=2)
seq(0,100, by=1)

seq(1,10, length.out = 5)
rep(1,5)
rep(c())
x = c(0:10, 50)
x
#function on data
xm = mean(x)
xm
#version of R
version()
