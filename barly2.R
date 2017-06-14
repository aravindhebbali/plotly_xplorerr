barly2 <- function(x, y, data) {
  
  d <- data %>%
    select_(x, y) 
  
  t <- d %>%
    table() %>%
    as.data.frame.matrix()
  
  col1 <- t %>%
    rownames() %>%
    as.numeric()
  
  dat <- cbind(col1, t) 
  
  colnames(dat)[1] <- x
  
  cname <- colnames(dat)
  
  p <- plot_ly(dat, x = dat[, 1], y = dat[, 2], 
               type = 'bar', name = cname[2])
  
  j <- dim(dat)[2]
  
  for (i in 3:j) {
    p <- p %>%
      add_trace(y = dat[, i], name = cname[i])
  }
  
  p
    
}

# test
barly2('cyl', 'gear', mtcars)

