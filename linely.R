library(dplyr)
library(plotly)

data1 <- c(7.2, 7.6, 6.8, 6.5, 7)
data2 <- c(6.8, 7.2, 7.8, 7, 6.2)
data <- data.frame(x = data1, y = data2)

linely <- function(data, x, lcol = 'blue', lwidth = 1, ltype = 'plain') {
  
  yax <- data %>% select_(x) %>% unlist()
  xax <- yax %>% length() %>% seq_len()
  
  p <- plot_ly(data = data,
               type = "scatter", 
               mode = "lines",
               x = xax,
               y = yax,
               line = list(
                 color = lcol,
                 width = lwidth,
                 dash = ltype
               )) 
  
  p
  
}

p <- linely(data, 'x')