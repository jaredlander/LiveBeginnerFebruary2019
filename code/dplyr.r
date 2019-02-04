library(dplyr)

data(diamonds, package='ggplot2')
diamonds

head(diamonds)
head(diamonds, n=3)
tail(diamonds, n=2)

head(diamonds)
diamonds %>% head()

head(diamonds, n=3)
diamonds %>% head(n=3)

tail(head(diamonds, n=4), n=2)
diamonds %>% head(n=4) %>% tail(n=2)

# ctrl+shift+M:  pipe shortcut

select(diamonds, carat, price)
diamonds %>% select(carat, price)

diamonds %>% filter(carat > 1)
diamonds %>% filter(cut == 'Ideal')
diamonds %>% filter(cut == 'Ideal' & carat > 1)
diamonds %>% filter(carat > 1 | carat <= 0.4)
diamonds %>% filter(cut != 'Ideal')
