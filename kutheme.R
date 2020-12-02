library("extrafont")
loadfonts()
library("ggplot2")
library("ggthemr")

ku_colours <- c('#eeeeee', # White
                "#8282ff", # Blue b9b9ff
                "#ff7979", # Red
                '#f2f200', # Yellow
                "#0bff06", # Green
                "#eca8e5", # Magenta
                "#ffad5b"  # Brownish
                )

ku_colours <- c('#eeeeee', # White
                "#8282ff", # Blue b9b9ff
                "#ff7979", # Red
                '#f2f200', # Yellow
                "#0bff06", # Green
                "#eca8e5", # Magenta
                "#ffad5b"  # Brownish
                )


get_theme_palette <- function() {

    ggthemr::define_palette(
        swatch = ku_colours,
        gradient = c(lower = "#377EB8", upper = "#E41A1C")
    )
    
}

# Set the default font for graphics
default_font_name <- "Kalam Bold"

ggthemr::ggthemr(get_theme_palette())

scale_colour_discrete <- function(...) scale_colour_manual(values=ku_colours)

# scale_colour_manual(values=ku_colours)

theme_xkcd <- function() {
    ggplot2::theme_grey(
             ) +
        theme(text = element_text(size=34, family=default_font_name, colour="#eeeeee"),   # Handwritten font with ÆØÅ
              line = element_line(colour = "#eeeeee", size = 1, linetype = 1, lineend = "butt"),
              rect = element_rect(fill = "#16161d", colour = "#eeeeee", size = 0.5, linetype = 1),
              panel.background = element_rect(fill = "transparent", colour = NA), # bg of the panel
              plot.background = element_rect(fill = "transparent", colour = NA), # bg of the plot

              axis.text = element_text(colour="#eeeeee", size=34),   # Colour of axis labels
              axis.line = element_line(size=2, colour="#dddddd"),    # Colour of axis lines

#              axis.text.y=element_text(vjust=5, hjust=5),

              panel.grid = element_line(size=1, colour="#434343"), # Gridlines inside picture
              legend.key = element_rect(fill="#16161d", colour=NA)              
         )
}

xkcd_line <- function(...) {
    geom_line(...)
}

update_geom_defaults("text", list(family=default_font_name))


theme_set(
  theme_xkcd()
)

