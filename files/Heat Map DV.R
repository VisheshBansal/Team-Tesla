library(ggplot2)
library(plotly)
library(reshape2)
df <-read.csv("ElectricCarData_Clean.csv", header=TRUE)


z<-df[,c(5,6,4,14)]
cormat <- round(cor(z),4)
fig <- plot_ly(
  x = c("range", "efficiency", "top speed","price"),
  y = c("range", "efficiency", "top speed","price"),
  z = cormat, type = "heatmap")

fig
