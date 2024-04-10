#### Setup ####
install.packages("rtools")
install.packages("rio")
install.packages("tidyverse")
install.packages("ggrepel")
install.packages("ggsci")

library(rio)           
library(tidyverse)     
library(ggrepel)       
library(ggsci)         


#### El primer gràfic! ####
getwd()

import("/Users/rcirer/Developer/24-intro-R/dades/olympics_athlete.csv") |>
  # filter(games != "Sochi") |>                           
  ggplot(aes(x = year, y = cost_per_athlete_mio_usd, color = type, label = games)) +
  geom_smooth(se = FALSE) + 
  geom_label_repel(box.padding = 0.5, segment.color = "gray", show.legend = FALSE) +
  geom_point() +                                     
  labs(
    title = "The Oxford Olympics Study, 2016",
    subtitle = "Cost per athlete in the Olympics 1960-2016, million 2015 USD",
    x = "Year",
    y = "Cost per Athlete (Millions USD)",
    color = "",
    caption = "https://data.world/sports/olympics"
  ) +
  scale_color_npg() +
  theme_classic() +
  theme(legend.position = "top")


#### Mira aquí: ####

# https://r-graph-gallery.com/index.html
# https://r-charts.com/ggplot2/
