library(plotly)
data<-read.csv("ElectricCarData_Clean.csv",header = TRUE)
fig <- plot_ly(data, x=~RapidCharge,y = ~PriceEuro,color =~RapidCharge, type = "box", boxpoints = "all", jitter = 0.3,
               pointpos = -1.8)

fig
