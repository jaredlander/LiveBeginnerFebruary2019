data(tips, package='reshape2')
library(coefplot)

head(tips)
table(tips$time)

time1 <- glm(time ~ total_bill, data=tips, family=binomial)
time1
summary(time1)
coefplot(time1)

time2 <- glm(time ~ total_bill + day, data=tips, family=binomial)
coefplot(time2, sort='magnitude')

time3 <- glm(time ~ total_bill + smoker, data=tips, family=binomial)
coefplot(time3, sort='magnitude')

AIC(time1, time2, time3)
BIC(time1, time2, time3)

table(tips$size)

size1 <- glm(size ~ total_bill + day + time, data=tips, family=poisson)
coefplot(size1, sort='magnitude')

predict(model, newdata=new_data)