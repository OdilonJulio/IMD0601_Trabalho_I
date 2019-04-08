library(swirl)
swirl()
Odilon
1
15

data(cars)
?cars
head(cars)
dim(cars)
names(cars)
tail(cars)
summary(cars)
plot(cars)

?plot
cars2 <- plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(x = cars$dist, y = cars$speed)
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col = 3)
plot(cars, xlim = c(10, 15))
data(mtcars)
play(mtcars)
boxplot(formula = mpg ~ cyl, data = mtcars)
hist(mtcars$mpg)

# biblioteca "ggplot2"

library(ggplot2)
ggplot(data = mtcars)
ggplot(mtcars)
ggplot(mtcars, aes(x = mpg, y= wt))
ggplot(mtcars, aes(x = mpg, y= wt)) + geom_point()
g <- ggplot(mtcars, aes(x = mpg, y= wt)) + geom_point()
g + facet_grid(gear~cyl)
g <- g + facet_grid(gear~cyl)
g + stat_smooth()
g <- g + stat_smooth()
g + coord_cartesian(xlim = c(1, 40))
g <- g + coord_cartesian(xlim = c(1, 40))
g + theme_dark()
g <- g + theme_dark()

#Iris Dataset

data(iris)
str(iris)
plot(iris$Sepal.Length, iris$Sepal.Width)
points(iris$Petal.Length, iris$Petal.Width, col = "red")
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point() + geom_point(aes(x = Petal.Length, y = Petal.Width), col = "red")


#Exercício - Corrigir o gráfico anterior

iris$Flower <- 1:nrow(iris)

library(tidyr)

gather(iris, part_measure, value, Sepal.Length:Petal.Width)
#####
iris.tidy <- separate(iris.wide, part_measure, c("part", "measure"))
#####
head(iris)


# Após o exercício

ggplot(iris.wide, aes(Length, Width, col = part)) + geom_point()

ggplot(iris.wide, aes(Length, Width, col = part, shape = Species))
+ geom_point()

ggplot(iris.wide, aes(Length, Width, col = Species, shape = part))
+ geom_point()

ggplot(iris.wide, aes(Species, Width)) + geom_point()

ggplot(iris.wide, aes(Species, Width)) + geom_point(position =
                                                      "jitter")
ggplot(iris.wide, aes(Length, Width, col = part, shape = Species))
+ geom_point() + facet_grid(~Species)

ggplot(iris.wide, aes(Length, Width, col = part, shape = Species))
+ geom_point() + facet_grid(part~Species)

ggplot(iris, aes(x = Petal.Length, y = Petal.Width, col =
                   Species)) + geom_point()

iris.group <- group_by(iris, Species)
iris.group <- summarise(iris.group, PLM = mean(Petal.Length),
                          PWM = mean(Petal.Width))
str(iris.group)
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, col =
                     Species)) +
  geom_point() +
  geom_point(data = iris.group, aes(x = PLM, y = PWM), size = 5)

ggplot(iris, aes(x = Sepal.Width)) + geom_histogram()
ggplot(iris, aes(x = Sepal.Width)) + geom_histogram(binwidth = 0.1)
ggplot(iris, aes(x = Sepal.Width)) + geom_histogram(bins = 20)

ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(bins = 20)

ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(bins = 20, position = "dodge")

ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(bins = 20, position = "fill")

data(diamonds)
str(diamonds)
ggplot(diamonds, aes(cut)) + geom_bar()

load(fish.RData)
str(fish.tidy)
ggplot(fish.tidy,aes(x=Year, y=Capture, linetype = Species)) +
  geom_line()

load(fish.RData)
str(fish.tidy)
ggplot(fish.tidy,aes(x=Year, y=Capture, col = Species)) +
  geom_line()

load(fish.RData)
str(fish.tidy)
ggplot(fish.tidy,aes(x=Year, y=Capture, fill = Species)) +
  geom_area()

load(fish.RData)
str(fish.tidy)
ggplot(fish.tidy,aes(x=Year, y=Capture, fill = Species)) +
  geom_area(position = "fill")
