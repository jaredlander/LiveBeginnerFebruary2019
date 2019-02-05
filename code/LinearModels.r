data(tips, package='reshape2')
library(ggplot2)
library(coefplot)
library(useful)

ggplot(tips, aes(x=total_bill, y=tip)) + geom_point() + geom_smooth(method='lm')

tip1 <- lm(tip ~ total_bill, data=tips)
tip1

0.92 + 0.10*20
0.92 + 0.10*30
0.92 + 0.10*15
0.92 + 0.10*16
0.92 + 0.10*0

tip2 <- lm(tip ~ total_bill + size, data=tips)
tip2

0.668 + 0.092*30 + 0.193*1
0.668 + 0.092*30 + 0.193*2
0.668 + 0.092*45 + 0.193*2

tip2
summary(tip2)
coefplot(tip2, sort='magnitude')

head(tips)
table(tips$day)

source(
    'https://raw.githubusercontent.com/jaredlander/LiveBeginnerFebruary2019/master/code/boros.r'
)

boros

build.x( ~ Pop, data=boros)
build.x( ~ Pop + Size, data=boros)
build.x( ~ Pop * Size, data=boros)
build.x( ~ Pop + Boro, data=boros)

tip3 <- lm(tip ~ total_bill + size + day, data=tips)
tip3
summary(tip3)
coefplot(tip3, sort='magnitude')

tip4 <- lm(tip ~ total_bill + size + day + smoker, data=tips)
coefplot(tip4, sort='magnitude')

AIC(tip1, tip2, tip3, tip4)
BIC(tip1, tip2, tip3, tip4)

multiplot(tip1, tip2, tip3, tip4)
multiplot(tip1, tip2, tip3, tip4, single=FALSE)
