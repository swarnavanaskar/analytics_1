#1st method
omni1 = read.csv(./data/salesqty.csv)
head(omni1)

#2nd Method : from CSV file
omni2 = read.csv(file.choose())
head(omni2)

#3rd Method : from gsheet 
library(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3 = as.data.frame(gsheet::gsheet2tbl(url))
head(omni3)

#create a dataframe of new sample values
fit2 = lm(sales ~ price + promotion, data=omni3)
(ndata2 = data.frame(price=c(60,70), promotion=c(300,400)))
p2sales = predict(fit2, newdata=ndata2)
cbind(ndata2, p2sales)

#assumption
par(mfrow=c(2,2))
plot(fit2)
par(mfrow=c(1,1))

plot(fit2,which=1)  # no pattern, equal variance
plot(fit2,2)  # Residuals are normally distributed
plot(fit2,3)  # No hetero-scedascity
plot(fit2,4)  # tells outliers which affect model
omni[-c(11,14,15),]

fit3 = lm(sales ~ price + promotion, data=omni[-c(11,14,15),])
plot(fit3,4)
summary(fit3)