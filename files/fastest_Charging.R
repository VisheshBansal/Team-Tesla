library(plotly)
d <-read.csv("ElectricCarData_Clean.csv", header=TRUE)
fig <- plot_ly(d, x = ~Brand, y = ~FastCharge_KmH, type = 'scatter')

fig
