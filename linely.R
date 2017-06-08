library(dplyr)
library(plotly)

xaxis <- list(title = 'Observation',
              showline = TRUE,
              showgrid = TRUE,
              gridcolor = 'blue',
              showticklabels = TRUE,
              linecolor = 'blue',
              linewidth = 1,
              zeroline = FALSE,
              autotick = FALSE,
              ticks = 'outside',
              tickcolor = 'green',
              tickwidth = 2,
              ticklen = 10,
              tickfont = list(family = 'Arial',
                              size = 12,
                              color = 'blue'))

# annotations
annote <- list(
  x = 10,
  y = 20,
  xanchor = 'middle',
  yanchor = 'middle',
  text = 'hello',
  font = list(family = 'Arial',
              size = 16,
              color = 'blue'),
  showarrow = FALSE
)

p <- plot_ly(data = mtcars,
             type = "scatter", 
             mode = "lines",
             x = 1:32,
             y = mpg,
             line = list(
               color = 'red',
               width = 4,
               dash = 'dot'
             )) %>%
  
  layout(title = 'Line Chart',
         paper_bgcolor = 'gray',
         plot_bgcolor = 'pink',
         xaxis = xaxis) %>%
  layout(annotations = annote)

p
