library(plotly)

d <-read.csv("ElectricCarData_Clean.csv", header=TRUE)

fig <- plot_ly(d, x = ~Brand, y = ~PriceEuro, type = 'scatter', mode = 'markers')
               
fig

