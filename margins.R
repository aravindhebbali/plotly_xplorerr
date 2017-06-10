library(plotly)

m <- list(
  l = 50,
  r = 50, 
  t = 50,
  b = 50, 
  pad = 4
)

p <- plot_ly(x = seq(0, 8),
             y = seq(0, 8),
             width = 500,
             height = 500) %>%
  layout(autosize = F,
         margin = m)

# legend inside plot
l <- list(x = 0.1,
          y = 0.9)

# legend outside plot
l < list(x = 100,
         y = 0.5)

# horizontal legend
l <- list(orientation = 'h')

# styling legend
l <- list(
  x = 100,
  y = 0.5,
  orientation = 'v',
  font = list(
    family = "sans-serif",
    size = 12,
    color = "#000"),
  bgcolor = "#E2E2E2",
  bordercolor = "#FFFFFF",
  borderwidth = 2)

layout(legend = l)