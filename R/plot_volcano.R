plot_volcano <- 
    function(dat){
        m <- 
            dat %>% 
            filter(Adj_p_val < 0.05)
        
        a <- list(
            x = m$log2FC,
            y = (-log10(m$Adj_p_val)),
            textangle = -45,
            opacity = 0,
            xref = "x",
            yref = "y",
            showarrow = FALSE,
            # arrowhead = 4,
            # arrowsize = .5,
            # ax = 20,
            # ay = -20,
            font = list(color = '#006699',
                        family = 'sans serif',
                        size = 9)
        )
        
        p <- 
            dat %>%
            plot_ly(
                x = ~log2FC, 
                y = ~(-log10(Adj_p_val+0.005)), # correct for the values that are 0
                hovertext = m$ORF,
                color = "#006699",
                type = 'scatter', 
                mode = 'markers',
                size = ~(abs(log2FC))
                # marker = list(size = 6)
            ) %>% 
            layout(annotations = a) %>%
            layout(shapes = list(hline(1.30103))) %>%
            layout(title = names(dat)) %>%
            layout(yaxis = list(range = c(1, 2.5))) %>%
            layout(xaxis = list(range = c(-9, 5)))
        p
        
    }