library(plotly)
setwd("E:/")
data<-read.csv("ElectricCarData_Clean.csv")
fig <- plot_ly(
  data, x = ~Brand, y = ~Range_Km, type='scatter',mode = 'markers',
  # Hover text:
  text = ~paste("RapidCharge: ",RapidCharge, '<br>Price: $',PriceEuro),
  color = ~Brand, size = ~Seats
)
fig
