library(plotly)
df <- data.frame(read.csv("ElectricCarData_Clean.csv", header=TRUE,sep=","))

data <- df[,c('Brand', 'PriceEuro','Model')]
fig <- plot_ly(data, labels =~Brand, values = ~PriceEuro, type = 'pie',
               textposition = 'inside',
               textinfo = 'label+percent',
               insidetextfont = list(color = '#FFFFFF'),
               marker = list(colors = colors,line = list(color = '#FFFFFF', width = 1), pull=1.5),
               showlegend = FALSE)
fig <- fig %>% layout( title='Market Price in Euros',
                       xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                       yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
fig