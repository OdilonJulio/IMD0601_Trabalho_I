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

lenGenome <- select(data, Genome.Size.....assembled)
par(mfrow = c(1, 2)) # Possibilita visualizar vários plots ao mesmo tempo.
normal <- rnorm(1000, 0, 1) # Criando uma distribuição normal para servir como referência.
lenGenomeSort <- arrange(lenGenome, desc(Genome.Size.....assembled))
qqnorm(lenGenomeSort$Genome.Size.....assembled) ## Constata se segue uma dist normal.
qqline(lenGenomeSort$Genome.Size.....assembled, col = 'red')
qqnorm(normal)
qqline(normal, col = 'blue')


##4
countGenus <- count(data, Genus, sort=TRUE)
View(countGenus)
head(countGenus)













