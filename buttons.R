library(plotly)

# methods
# 1. restyle: modify data or data attributes
# 2. relayout: modify layout attributes
# 3. update: modify data and layout attributes
# 4. animate: start or pause animation

# use buttons where values are known or fixed
# make a list of such options


# update line color
x <- seq(-2*pi, 2*pi, length.out = 1000)
df <- data.frame(x, y1 = sin(x))

p <- plot_ly(df, x = ~x) %>%
  add_lines(y = ~y1)

p <- p %>% 
  layout(
    title = 'Button Restyle',
    xaxis = list(domain = c(0.1, 1)),
    yaxis = list(title = 'y'),
    updatemenus = list(
      list(
        type = 'buttons',
        y = 0.8,
        buttons = list(
          
          list(method = 'restyle',
               args = list("line.color", "blue"),
               label = "Blue"),
          
          list(method = 'restyle',
               args = list("line.color", "red"),
               label = "Red")
          
        )
      )
    )
  )