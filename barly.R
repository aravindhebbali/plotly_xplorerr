library(plotly)

x <- levels(as.factor(mtcars$cyl))
y <- mtcars$cyl %>% table() %>% as.vector()
data <- data.frame(x, y)

p <- plot_ly(data, 
        x = ~x, 
        y = ~y,
        type = "bar")

p

# grouped bar chart
data <- as.data.frame(table(mtcars$am, mtcars$vs))
