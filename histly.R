library(plotly)

histly <- function(data = NULL, y = NULL, hist_orient = 'v', 
                   hist_opacity = 1, hist_type = 'count', auto_binx = TRUE,
                   xbins_start = NULL, xbins_end = NULL, xbins_size = NULL,
                   hist_col = 'blue', hist_l_col = 'black', hist_l_w = 1,
                   hist_bargap = 0) {
  
  y1 <- data %>%
    select_(y) %>%
    unlist()
  
  if(hist_orient == 'v') {
  
    p <- plot_ly(data, x = y1, 
                 type = "histogram", 
                 opacity = hist_opacity,
                 histnorm = hist_type,
                 autobinx = auto_binx,
                 xbins = list(
                   start = xbins_start,
                   end = xbins_end,
                   size = xbins_size
                 ),
                 marker = list(
                   color = hist_col,
                   line = list(
                     color = hist_l_col,
                     width = hist_l_w
                   )
                 )
    )
  
  } else {
    
    p <- plot_ly(data, y = y1, 
                 type = "histogram", 
                 opacity = hist_opacity,
                 histnorm = hist_type,
                 autobinx = auto_binx,
                 xbins = list(
                   start = xbins_start,
                   end = xbins_end,
                   size = xbins_size
                 ),
                 marker = list(
                   color = hist_col,
                   line = list(
                     color = hist_l_col,
                     width = hist_l_w
                   )
                 )
    )
    
  }
  
  p <- p %>%
    layout(
      bargap = hist_bargap
    )
  
  p
  
}

h <- histly(mtcars, 'mpg', hist_orient = "h")
h
