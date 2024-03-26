here :: i_am ("code/make_table.R")

# importing dataset
df <- readRDS(here::here("clean_data/clean_data.rds"))

library(gtsummary)

# making table 
table <- df |>
  select(`Clump.Thickness`, `Bare.Nuclei`, `Bland.Chromatin`, `Normal.Nucleoli`, `Marginal.Adhesion`, Class) |>
  tbl_summary(by = Class) |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "Table 1") |>
  add_overall() |>
  add_p()

saveRDS(
  table,
  file = here::here("output/Table.rds")
)