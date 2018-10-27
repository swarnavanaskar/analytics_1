#factors
gender= sample(c('M','F'), size = 20, replace = T)
summary(gender)
genderF = factor(gender)
summary(genderF)
genderF

likscale = sample(c('EX', 'Good', 'Sat', 'Poor'), size = 20, replace = T)
summary(likscale)
class(likscale)
likscaleF = factor(likscale)
summary(likscaleF)
class(likscaleF)
likscale0F = factor(likscale,ordered = T, levels = c('poor', 'sat', 'Good', 'EX'))
summary(likscale0F)
likscale0F
barplot(table(likscaleF), col = 1:4)
barplot(table(likscale0F), col = 1:4)
