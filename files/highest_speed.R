library(plotly)
d <-read.csv("ElectricCarData_Clean.csv", header=TRUE)
fig <- plot_ly(d, x = ~Brand, y = ~TopSpeed_KmH, color = ~TopSpeed_KmH, size = ~TopSpeed_KmH)

fig
