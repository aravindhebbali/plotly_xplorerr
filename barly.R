library(plotly)

x <- levels(as.factor(mtcars$cyl))
y <- mtcars$cyl %>% table() %>% as.vector()
data <- data.frame(x, y)

p <- plot_ly(data, 
        x = ~x, 
        y = ~y,
        type = "bar")

p

# grouped bar chart
Animals <- c("giraffes", "orangutans", "monkeys")
SF_Zoo <- c(20, 14, 23)
LA_Zoo <- c(12, 18, 29)
data <- data.frame(Animals, SF_Zoo, LA_Zoo)

p <- plot_ly(data, x = ~Animals, y = ~SF_Zoo, 
             type = "bar", name = "SF_Zoo") %>%
  add_trace(y = ~LA_Zoo, name = "LA_Zoo") %>%
  layout(yaxis = list(
    title = 'Count'
    ),
    barmode = 'group'
  )

p <- plot_ly(data, x = ~Animals, y = ~SF_Zoo, 
             type = "bar", name = "SF_Zoo") %>%
  add_trace(y = ~LA_Zoo, name = "LA_Zoo") %>%
  layout(yaxis = list(
    title = 'Count'
  ),
  barmode = 'stack'
  )


# hover text and bar color
x <- c('Product A', 'Product B', 'Product C')
y <- c(20, 14, 23)
text <- c('27% market share', '24% market share', '19% market share')
data <- data.frame(x, y, text)

p <- plot_ly(data, x = ~x, y = ~y, type = "bar", text = text,
             marker = list(color = 'blue',
                           line = list(
                             color = 'black',
                             width = 1.5
                           ))) %>%
  layout(
    title = 'Bar Chart',
    xaxis = list(title = ""),
    yaxis = list(title = "")
  )


# add labels
p <- plot_ly(data, x = ~x, y = ~y, type = "bar", text = text,
             marker = list(color = 'blue',
                           line = list(
                             color = 'black',
                             width = 1.5
                           ))) %>%
  layout(
    title = 'Bar Chart',
    xaxis = list(title = ""),
    yaxis = list(title = ""),
    annotations = list(x = x, y = y, text = y,
                       xanchor = 'center', yanchor = 'bottom',
                       showarrow = FALSE)
  )


# bar color: color
# bar width: width
# bar color based on a variable
# bargap
# bargroupgap
# barmode = 'relative'
# horizontal bar chart
p <- plot_ly(x = c(20, 14, 23), 
             y = c('giraffes', 'orangutans', 'monkeys'), 
             type = 'bar', 
             orientation = 'h')


