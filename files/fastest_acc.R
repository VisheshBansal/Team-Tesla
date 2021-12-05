library(plotly)

d <-read.csv("/Users/NeerajChauhan/Downloads/DV project.csv", header=TRUE)

fig <- plot_ly(
  d, x = ~Brand, y = ~AccelSec,
  color = ~AccelSec)

fig
