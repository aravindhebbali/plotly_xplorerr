library(plotly)

scatterly <- function(data, x, y, name = NA, text = NA,
                      color = 'blue', opacity = 1, 
                      symbol = 'circle', size = 5,
                      title = NA, show_legend = TRUE,
                      x_title = NA, y_title = NA,
                      x_showgrid = TRUE, y_showgrid = TRUE,
                      fit_line = FALSE, line_col = 'red', 
                      line_type = 'dashed', line_width = 1) {
  
  x <- data %>% select_(x) %>% unlist() 
  y <- data %>% select_(y) %>% unlist()
  
  p <- plot_ly(data = data,
               type = "scatter", 
               mode = "markers",
               x = x,
               y = y, 
               name = name,
               text = text,
               marker = list(
                 color = color,
                 opacity = opacity,
                 symbol = symbol,
                 size = size
               )) %>%
    
    layout(
      title = title,
      xaxis = list(
        title = x_title,
        showgrid = x_showgrid
      ),
      yaxis = list(
        title = y_title,
        showgrid = y_showgrid
      ),
      showlegend = show_legend
    )
  
  if(fit_line) {
    
    p <- p %>%
      add_trace(x = x,
                y = ~fitted(lm(y ~ x)),
                mode = 'markers+lines',
                line = list(
                  color = line_col,
                  dash = line_type,
                  width = line_width
                )
      )
    
    p  
  }
  
  p

}


# test
scatterly(mtcars, 'disp', 'mpg', text = 'hello',
          title = 'Displacement vs Mileage',
          x_title = 'Displacement', y_title = 'Miles Per Gallon',
          show_legend = F, x_showgrid = F, fit_line = T)
