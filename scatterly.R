library(plotly)

p <- plot_ly(data = mtcars, 
             type = "scatter", 
             mode = "markers",
             x = ~disp, 
             y = ~mpg, 
             name = 'mileage',
             text = rownames(mtcars),
             marker = list(
               color = '#264E86',
               opacity = 0.7,
               symbol = 'square',
               size = 10
             )) %>%
  
  add_trace(x = ~disp,
            y = ~fitted(lm(mpg ~ disp)),
            mode = 'lines',
            line = list(
              color = 'red',
              dash = 'dashed',
              width = 1.8
            )
  ) %>%
  
  layout(
    title = 'Mileage vs Displacement',
    titlefont = 'bold',
    xaxis = list(
      title = 'Displacement',
      showgrid = T
    ),
    yaxis = list(
      title = 'Miles Per Gallon',
      showgrid = T,
      outlinecolor = 'blue'
    ),
    showlegend = T
  )
  

p
