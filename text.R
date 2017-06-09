library(plotly)

# basics
Primates <- c('Potar monkey', 'Gorilla', 'Human', 'Rhesus monkey', 'Chimp')
Bodywt <- c(10.0, 207.0, 62.0, 6.8, 52.2)
Brainwt <- c(115, 406, 1320, 179, 440)
data <- data.frame(Primates, Bodywt, Brainwt)

p <- plot_ly(data = data,
             x = ~Bodywt,
             y = ~Brainwt,
             type = 'scatter',
             mode = 'text',
             text = ~Primates,
             textposition = 'middle right',
             textfont = list(
               color = '#000000',
               size = 16
             )) %>%
  
  layout(title = 'Primates Brain and Body Weight',
         xaxis = list(title = 'Body Wieght (kg)',
                      zeroline = TRUE,
                      range = c(0, 250)),
         yaxis = list(title = 'Brain Weight (g)',
                      range = c(0, 1400)))

p


# text styling
data <- mtcars %>%
  filter(am == 1, gear == 4)

# text style
t <- list(
  family = 'sans serif',
  size = 14,
  color = toRGB("grey50")
)

p <- plot_ly(data = data, x = ~ wt, y = ~mpg, 
            text = rownames(data)) %>%
  add_markers() %>%
  add_text(textfont = t, textposition = 'top right') %>%
  layout(xaxis = list(
    range = c(1.6, 3.2),
    showlegend = FALSE
  ))

p

# add info to default hover text
p <- plot_ly(mtcars,
             x = ~disp,
             y = ~mpg,
             type = 'scatter',
             mode = 'markers',
             text = ~paste('Car: ', rownames(mtcars)))


# custom hover text
p <- plot_ly(mtcars,
             x = ~disp,
             y = ~mpg,
             type = 'scatter',
             mode = 'markers',
             hoverinfo = 'text',
             text = ~paste('Car: ', rownames(mtcars),
                           '<br> Displacement: ', ~disp,
                           '<br> Miles Per Gallon: ', ~mpg))

# add single annotation
m <- mtcars %>%
  filter(mpg == max(mpg))

a <- list(
  x = m$wt,
  y = m$mpg,
  text = rownames(m),
  xref = 'x',
  yref = 'y',
  xanchor = 'left',
  showarrow = FALSE,
  arrowhead = 7,
  ax = 20,
  ay = -40,
  font = list(
    family = 'sans serif',
    size = 14,
    color = 'red'
  )
)

p <- plot_ly(mtcars, x = ~wt, y = ~mpg) %>%
  add_markers() %>%
  layout(annotations = a)






