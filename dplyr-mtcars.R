#analysis of dataset mtcars using dplyr
#filename : dplyr-mtcars.R
library(dplyr)
?mtcars
#structure of data set
str(mtcars) #structure
dim(mtcars) #dimention
names(mtcars) ; colnames(mtcars) #column names
rownames(mtcars) #rownames
summary(mtcars)


#summary activities on mtcars
t1=table(mtcars$am)
table(mtcars$hp)
table(mtcars$drat)
pie(t1)
19/32*360
pie(t1, labels = c('Auto', 'Manual'))
table(mtcars$gear)
t2=table(mtcars$gear)
pie(t2)
barplot(t2, col=c('white','blue','yellow'), xlab='Gear', ylab='No of cars', ylim=c(0,20))
title(main = 'Distribution of Gears of Cars', sub='No of Gears')

#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))
#select for columns, slice for rows
mtcars %>% arrange(mpg) #ascending order of mileage
mtcars %>% arrange(am, desc(mpg)) %>% select(am,mpg) #ascending order of am,descending order of mpg
mtcars %>% mutate(rn= rownames(mtcars)) %>% select(rn, mpg)
mtcars %>% sample_frac(.3)
mtcars %>% sample_n(5)
mtcars %>% select(sample(x=c(1:7), size = 2)) %>% head

sample(x=1:11, size = z)
mtcars %>% mutate( newmpg = mpg * 1.1)
mutate(mtcars, newmpg = mpg*1.2)
transmute(mtcars, mpgtrans = mpg*2)

#type of Tx, Mean(mgp)
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg), MaxHP=max(hp), MinWT = min(wt))
mtcars %>% group_by(gear, cyl,hp) %>% summarise(MeanMPG = mean(mpg))

