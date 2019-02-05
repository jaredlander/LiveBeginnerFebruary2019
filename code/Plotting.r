library(ggplot2)

data(diamonds, package='ggplot2')

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut, shape=cut)) + 
    geom_point(size=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1) + 
    geom_smooth()

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1) + 
    geom_smooth()

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) +
    geom_smooth()

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut)) +
    geom_smooth() +
    geom_smooth(aes(color=cut))
