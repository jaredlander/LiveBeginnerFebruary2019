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
