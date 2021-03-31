library(ggplot2)
# library(extrafont)
# loadfonts(device = "win")
# font_import("FreightSans Pro")
cbPalette <- 
    c("#3787B0", "#6EB43F", "#F8981D", "#EF4035", 
      "#073949", "#0068AC", "#89CCE2", "#C9D6A5",
      "#A2998B", "#D8D2C9", "#9FAD9F", "#BFB778"
    )

# ome time declaration of the themes being used in different ggplots
theme_jack <- function (base_size = 11) {
  theme_gray(base_size = base_size) %+replace%
    theme(
      plot.title = element_text(margin = margin(0,0,20,0), size = rel(1.50)),
      strip.text = element_text(margin(0,2,0,2), size = rel(1.0), colour = "#F7F7F7"),
      strip.background = element_rect(fill="#B31B1B", color = "#B31B1B"), 
      panel.border = element_rect(color = "#B31B1B", fill = NA),
      legend.text = element_text(size = rel(1.0)),
      legend.title = element_text(size = rel(1.0)),
      # legend.position="none",
      axis.text.x = element_text(angle = 0, size=rel(1.0), colour = "#222222"),
      axis.text.y = element_text(angle = 0, size=rel(1.0), colour = "#222222"),
      axis.title.x = element_text(margin = margin(20,0,0,0), colour = "#222222", size=rel(1.0)),
      axis.title.y = element_text(margin = margin(0,20,0,0), colour = "#222222", size=rel(1.0), angle=90),
      panel.background = element_rect(fill = "transparent",colour = NA), # or theme_blank()
      plot.background = element_rect(fill = "transparent",colour = NA),
      panel.grid.minor.y = element_blank(), #element_line(size=0.5),
      panel.grid.major = element_line(colour = "grey95"),
      panel.grid.minor = element_blank() #element_line(colour = "grey90")
    )
}

