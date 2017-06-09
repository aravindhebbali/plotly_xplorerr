library(plotly)

# style axes ticks and placements
a <- list(
  autotick = FALSE,
  ticks = "outside",
  tick0 = 0,
  dtick = 0.25,
  ticklen = 5, 
  tickwidth = 2,
  tickcolor = toRGB('blue')
)

s <- seq(1, 4, by = 0.25)
p <- plot_ly(x = ~s, y = ~s) %>%
  layout(xaxis = a, yaxis = a)

p

# style axes title and tickfont
f1 <- list(
  family = 'Arial, sans-serif',
  size = 18,
  color = 'lightgrey'
)

f2 <- list(
  family = 'Old Standard TT, serif',
  size = 14,
  color = 'black'
)

a <- list(
  title = 'Axis Title',
  titlefont = f1,
  showticklabels = TRUE,
  tickange = 45, 
  tickfont = f2,
  exponentformat = 'E'
)

s <- seq(1e6, 1e7, length.out = 10)
p <- plot_ly(x = ~s, y = ~s) %>%
  add_markers() %>%
  add_markers(y = ~rev(s)) %>%
  layout(xaxis = a, yaxis = a, showlegend = FALSE)


# style axes and zero line
ax <- list(
  zeroline = TRUE,
  showline = TRUE,
  mirror = 'ticks',
  gridcolor = 'blue',
  gridwidth = 2,
  zerolinecolor = 'red',
  zerolinewidth = 4,
  linecolor = 'brown',
  linewidth = 6
)


s <- seq(-1, 4)
p <- plot_ly(x = ~s, y = ~s, type = 'scatter', mode = 'markers') %>%
  layout(xaxis = ax, yaxis = ax)

# hide axes title, lines, ticks and labels
ax <- list(
  title = "",
  zeroline = FALSE,
  showline = FALSE,
  showticklabels = FALSE,
  showgrid = FALSE
)

p <- plot_ly(x = c(1, 2), y = c(1, 2)) %>%
  layout(xaxis = ax, yaxis = ax)

# domain
# anchor
# scaleanchor
# scaleratio
# rangemode






