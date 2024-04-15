# Load necessary libraries
library(png)
library(grid)
library(gridExtra)
library(here)
library(ggplot2)


# Set the working directory
setwd("/Users/bingbing/Desktop/FinalProject")

# Verify project directory setup with here
print(here::dr_here())

# Importing dataset (if needed for other purposes, not for images)
df <- readRDS(here::here("clean_data", "clean_data.rds"))

# Reading PNG images
ct <- readPNG(here::here("output", "ct.png"))
ma <- readPNG(here::here("output", "ma.png"))
bn <- readPNG(here::here("output", "bn.png"))
nn <- readPNG(here::here("output", "nn.png"))
um <- readPNG(here::here("output", "um.png"))
bc <- readPNG(here::here("output", "bc.png"))

# Convert images to raster objects for plotting
ct_grob <- rasterGrob(ct)
ma_grob <- rasterGrob(ma)
bn_grob <- rasterGrob(bn)
nn_grob <- rasterGrob(nn)
um_grob <- rasterGrob(um)
bc_grob <- rasterGrob(bc)

# Arrange images in a grid
Final_graph <- grid.arrange(ct_grob, ma_grob, bn_grob, nn_grob, um_grob, bc_grob, ncol = 2, nrow = 3)

# Save the final composite image
ggsave(filename = here::here("output", "Final_graph.png"),
       plot = Final_graph,
       width = 10, height = 6, units = "in")
