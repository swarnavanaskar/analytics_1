# Combined Plots
#plot, histogram, pie, boxplot, linechart, correlation plot

#plot
women
plot(women)
plot(women, type='p', pch=15, col='red')
plot(women, type='l')
plot(women, type='b')
plot(women, type='b', pch=18, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)

#more features with plot
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
title(main='Main Title', sub='Sub Title')