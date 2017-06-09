library(plotly)

x <- levels(as.factor(mtcars$cyl))
y <- mtcars$cyl %>% table() %>% as.vector()
data <- data.frame(x, y)

# intro
p <- plot_ly(data, labels = ~x, values = ~y, type = 'pie')
p

p <- plot_ly(data, labels = ~x, values = ~y, type = 'pie') %>%
  layout(
    xaxis = list(showgrid = FALSE,
                 zeroline = FALSE,
                 showticklabels = FALSE),
    yaxis = list(showgrid = FALSE,
                 zeroline = FALSE,
                 showticklabels = FALSE)
  )
p

# add text to pie chart
p <- plot_ly(data, labels = ~x, values = ~y, type = 'pie',
             textposition = "inside",
             textinfo = 'label+percent',
             insidetextfont = list(color = 'red',
                                   family = 'Arial', 
                                   size = 18),
             hoverinfo = 'text',
             direction = "clockwise",
             rotation = 90,
             pull = 0,
             hole = 0.3,
             opacity = 0.7,
             marker = list(line = list(color = "#FFFFFF", width = 1))) %>%
  layout(
    xaxis = list(showgrid = FALSE,
                 zeroline = FALSE,
                 showticklabels = FALSE),
    yaxis = list(showgrid = FALSE,
                 zeroline = FALSE,
                 showticklabels = FALSE)
  )
p

