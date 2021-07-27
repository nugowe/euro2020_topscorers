#!/usr/bin/R


library(tidyverse)
library(scales)
library(lubridate)
library(ggrepel)
library(stringi)
library(magick)
library(glue)
library(ggimage)
library(ggimage)
library(ggplot2)
library(cowplot)
library(ggtextures)
library(hrbrthemes)


image <- "https://www.emoji.co.uk/files/apple-emojis/activity-ios/421-soccer-ball.png"
GoalScorers <- euro2020GoalScorers %>% 
  ggplot(aes(x = reorder(Player, Goals), y = Goals,
             image = image)) +
  geom_isotype_col(img_width = grid::unit(1, "native"), img_height = NULL,
                   ncol = NA, nrow = 1, hjust = 0, vjust = 0.5) +
  coord_flip() +
  scale_y_continuous(breaks = c(0, 2, 4, 6, 8, 10, 12, 14),
                     expand = c(0, 0), 
                     limits = c(0, 15)) + theme_dark() + labs(title = "Top 10 Goal Scorers of Euro 2020",
                                                              subtitle = "Golden Boot Winner: Christiano Ronaldo (5 Goals, 1 Assist)",
                                                              y = "Number of Goals", x = NULL, caption = "Data Source: Uefa.com") + theme(
                                                                plot.title = element_text(color = "Black", size = 20, face = "bold", hjust = 0.5),
                                                                plot.subtitle = element_text(color = "Black", face = "bold", hjust = 0.5),
                                                                plot.caption = element_text(color = "black", face = "italic"),
                                                                text = element_text(family = "Roboto Condensed"),
                                                                panel.background = element_rect(fill = "#00C4DB",
                                                                                                colour = "#00C4DB")
                                                      
                                                              ) 
