here :: i_am ("code/Final_Project.Rmd")

# importing dataset
df <- readRDS(here::here("clean_data", "clean_data.rds"))

library(dplyr)
library(caret)
library(ggcorrplot)

# finding correlations between the variables
correlation <- cor(df[,1:10])
heatmap <- ggcorrplot(correlation, type = "lower", lab = TRUE)

ggsave(
  here::here ("output/correlation_heatmap.png"), 
              plot = heatmap)
  