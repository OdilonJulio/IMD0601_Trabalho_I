dim(data)
names(data)
tail(data)
data <- read.delim("~/IMD0601/trabalhoI/data.tab");View(data)
select()


library(ggplot2)
data2 <- select()
ggplot(data, aes(x = "Sequencing Center", y = "taxon_oid")) + geom_point() + facet_grid(gear~) + stat_smooth()



