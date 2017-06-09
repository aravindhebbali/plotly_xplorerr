library(plotly)

# 'type', 'visible', 'showlegend', 'legendgroup', 'opacity', 'name', 
# 'uid', 'hoverinfo', 'stream', 'x', 'y', 'text', 'orientation', 
# 'histfunc', 'histnorm', 'autobinx', 'nbinsx', 'xbins', 'autobiny', 
# 'nbinsy', 'ybins', 'marker', 'error_y', 'error_x', '_deprecated', 
# 'xaxis', 'yaxis', 'xsrc', 'ysrc', 'textsrc', 'key'

# intro
p <- plot_ly(mtcars, x = ~mpg, type = "histogram")
p <- plot_ly(mtcars, y = ~mpg, type = "histogram", orientation = "h")
p

# overlaid histograms
p <- plot_ly(mtcars, x = ~mpg, type = "histogram") %>%
  add_histogram(x = ~qsec) %>%
  layout(barmode = "overlay")
p

# stacked histograms
p <- plot_ly(mtcars, x = ~mpg, type = "histogram") %>%
  add_histogram(x = ~qsec) %>%
  layout(barmode = "stacked")
p


# color
p <- plot_ly(mtcars, x = ~mpg, type = "histogram",
             marker = list(color = "red"))
p

# opacity
p <- plot_ly(mtcars, x = ~mpg, type = "histogram",
             marker = list(color = "red"),
             opacity = 0.3)
p

# binning
p <- plot_ly(mtcars, x = ~mpg, type = "histogram",
             marker = list(color = "red",
                           line = list(
                             color = 'blue',
                             width = 2
                           )),
             opacity = 0.3,
             histnorm = "count",
             autobinx = FALSE,
             xbins = list(start = 10,
                          end = 34,
                          size = 5)) %>%
  layout(
    bargap = 0.1
  )
p


# density
p <- plot_ly(mtcars, x = ~mpg, type = "histogram",
             marker = list(color = "red",
                           line = list(
                             color = 'blue',
                             width = 2
                           )),
             opacity = 0.3,
             histnorm = "probability",
             autobinx = FALSE,
             xbins = list(start = 10,
                          end = 34,
                          size = 5)) %>%
  layout(
    bargap = 0.1
  )
p

