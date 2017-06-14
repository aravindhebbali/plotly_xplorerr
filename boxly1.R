boxly1 <- function(data = NULL, y = NULL, bpoints = "outliers", 
                   o_col = 'rgb(8,81,156)', o_out_col = 'rgba(219, 64, 82, 0.6)', 
                   o_out_size = 2, plot_w = NULL, plot_h = NULL) {
  
  if(!is.null(data)) {
    y <- data %>%
      select_(y) %>%
      unlist()
  }
  
  p <- plot_ly(type = "box", width = plot_w, height = plot_h) %>%
    add_boxplot(y = y, name = name, 
                boxpoints = b_points,
                marker = list(color = o_col,
                              outliercolor = o_out_col,
                              line = list(outliercolor = o_out_col,
                                          outlierwidth = o_out_size)),
                line = list(color = o_col)
    )
  
  p
  
}

# p <- boxly1(mtcars, 'mpg', outliers = "suspectedoutliers")
# p
# 
# y3 <- c(0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
#         8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25)
# 
# p <- boxly1(y = y3, bpoints = "suspectedoutliers", l_opacity = 0.2)
# p
