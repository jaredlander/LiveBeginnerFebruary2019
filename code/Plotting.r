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

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut))

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut)) + 
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut)) + 
    facet_wrap( ~ cut) +
    theme(legend.position='none')


ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=10)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=30)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=70)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=150)

ggplot(diamonds, aes(x=price)) + geom_histogram(bins=25, aes(color=cut))
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=25, aes(fill=cut))
