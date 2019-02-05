data(tips, package='reshape2')
head(tips)

mean(tips$tip)

t.test(tips$tip, mu=3.00, alternative='two.sided')
hist(tips$tip)

library(dplyr)
tips %>% 
    group_by(sex) %>% 
    summarize(AvgTip=mean(tip))

t.test(tip ~ sex, data=tips)
