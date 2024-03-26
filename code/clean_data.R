here :: i_am ("code/clean_data.R")

# importing dataset
df <- read.csv(here::here("data", "breast_cancer.csv"))

unique(df$Class)

# replacing the values with 0 and 1 for the purpose of building logistic regression model
df$Class <- ifelse(df$Class == 2, 0, 1)

# checking if any columns have missing values
colSums(is.na(df))

# saving the cleaned data
saveRDS(
  df,
  file = here::here("clean_data/clean_data.rds")
)