library(hrbrthemes)
library(tidyverse)
library(magick)

uefalogo <- image_read_svg("uefa2020logo.svg")

grid::grid.raster(uefalogo, x = 1, y = 0.03, just = c('right', 'bottom'), width = unit(3, 'inches'))
