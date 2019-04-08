## 1
data <- read.delim("~/IMD0601/trabalhoI/data.tab");View(data)
dim(data)
names(data)
tail(data)


##2
install.packages('tidyr')
install.packages('dplyr')
install.packages('ggplot2')
library(ggplot2)
library(tidyr)
library(dplyr)
count(data, Sequencing.Center, sort=TRUE)
count_data <- count(data, Sequencing.Center, sort=TRUE)
ggplot(count_data, aes(x = Sequencing.Center, y = n)) + geom_point()
data2 <- filter(count_data, n > 150)
ggplot(data2, aes(x = Sequencing.Center, y = n)) + geom_point()


##3

lenGenome <- select(data, Genome.Name...Sample.Name, Genome.Size.....assembled)
lenGenomeSort <- arrange(lenGenome, desc(Genome.Size.....assembled))
plot(lenGenomeSort)
plot(lenGenome)

ggplot(lenGenomeSort,
       mapping = aes(x = Genome.Name...Sample.Name,
                     y = Genome.Size.....assembled)) + geom_point()
normal <- dnorm(y,
      mean = mean(y),
      sd = sd(y),
      log = FALSE)














