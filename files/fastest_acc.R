library(plotly)

d <-read.csv("ElectricCarData_Clean.csv", header=TRUE)

fig <- plot_ly(
  d, x = ~Brand, y = ~AccelSec,
  color = ~AccelSec)

fig
