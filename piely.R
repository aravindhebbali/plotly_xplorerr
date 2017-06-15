piely <- function(data = NULL, x = NULL, text_pos = 'inside', text_font = 'Arial',
                  text_info = 'label+percent', itext_f_col = 'black',
                  itext_f_fam = 'Arial', itext_f_size = 14, hover_info = 'text',
                  text_direction = 'anticlockwise', text_rotation = 0, 
                  pie_pull = 0, pie_hole = 0, col_opacity = 0.9, 
                  pie_l_col = '#FFFFFF', pie_l_w = 1) {
  
  x1 <- data %>%
    select_(x) %>%
    unlist() %>%
    as.factor() %>%
    levels()
  
  y <- data %>%
    select_(x) %>%
    table() %>%
    as.vector()
  
  data <- data.frame(x1, y)
  
  p <- plot_ly(data, labels = x1, values = y, type = 'pie',
               textposition = text_pos, textinfo = text_info,
               textfont = text_font, 
               insidetextfont = list(color = itext_f_col,
                                     family = itext_f_fam,
                                     size = itext_f_size),
               hoverinfo = hover_info,
               direction = text_direction,
               rotation = text_rotation,
               pull = pie_pull,
               hole = pie_hole,
               opacity = col_opacity,
               marker = list(line = list(color = pie_l_col, 
                                         width = pie_l_w))) %>%
    layout(
      xaxis = list(showgrid = FALSE,
                   zeroline = FALSE,
                   showticklabels = FALSE),
      yaxis = list(showgrid = FALSE,
                   zeroline = FALSE,
                   showticklabels = FALSE)
    )
  
  p
  
}

p <- piely(mtcars, 'cyl')
p
