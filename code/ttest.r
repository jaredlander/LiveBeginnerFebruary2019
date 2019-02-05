data(tips, package='reshape2')
head(tips)

mean(tips$tip)

t.test(tips$tip, mu=3.00, alternative='two.sided')
