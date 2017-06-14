library(plotly)

# 'type', 'visible', 'showlegend', 'legendgroup', 'opacity', 'name', 
# 'uid', 'hoverinfo', 'stream', 'x', 'y', 'text', 'orientation', 
# 'histfunc', 'histnorm', 'autobinx', 'nbinsx', 'xbins', 'autobiny', 
# 'nbinsy', 'ybins', 'marker', 'error_y', 'error_x', '_deprecated', 
# 'xaxis', 'yaxis', 'xsrc', 'ysrc', 'textsrc', 'key'

p <- plot_ly(mtcars, y = ~mpg, 
             type = "histogram", 
             orientation = "h",
             opacity = 0.3,
             histnorm = "probability",
             autobinx = FALSE,
             xbins = list(
               start = 10,
               end = 34,
               size = 5
             ),
             marker = list(
               color = "red",
               line = list(
                 color = "black",
                 width = 1
               )
             )
) %>%
  layout(
    bargap = 0.1
  )

p
