library(plotly)

# univariate
p <- plot_ly(mtcars, y = ~mpg, type = "box") 

# bivariate
mtcars$cyl <- as.factor(mtcars$cyl)
p <- plot_ly(mtcars, y = ~mpg, color = ~cyl, type = "box") 

# grouped box plots
mtcars$gear <- as.factor(mtcars$gear)
p <- plot_ly(mtcars,
             x = ~cyl,
             y = ~mpg,
             color = ~gear,
             type = "box") %>%
  layout(
    boxmode = "group"
  )

# jittered points
p <- plot_ly(mtcars, 
             y = ~mpg,
             type = "box",
             boxpoints = "all",
             jitter = 0.3,
             pointpos = -1.8)

# outliers options
# boxpoints = all
# boxpoints = FALSE
# boxpoints = suspectedoutliers
# boxpoints = outliers