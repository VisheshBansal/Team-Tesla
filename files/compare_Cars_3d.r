library(plotly)

data<-read.csv("ElectricCarData_Clean.csv")
fig <- plot_ly(data,x =~Brand,y =~Seats,z =~Segment,color=~Brand,text = ~paste('Brand:', Brand, '<br>Seats:', Seats, '<br>Segment:', Segment))
fig <- fig %>% add_markers()
fig <- fig %>% layout(scene = list(xaxis = list(title = 'Brand'),
                                   yaxis = list(title = 'Seats'),
                                   zaxis = list(title = 'Segment')))

fig
