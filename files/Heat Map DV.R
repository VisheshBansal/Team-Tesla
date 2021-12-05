library(ggplot2)
library(plotly)
library(reshape2)
d <-read.csv("ElectricCarData_Clean.csv", header=TRUE)


z<-d[1:30,c(14,5,6,7,4)]
z

cormat <- round(cor(z),4)
head(cormat)
melted_cormat <- melt(cormat)
head(melted_cormat)

fig <- plot_ly(
  x = c("price","top speed", "range", "efficiency","fast charge"),
  y = c("price","top speed", "range", "efficiency","fast charge"),
  z = cormat, type = "heatmap"
)

fig
