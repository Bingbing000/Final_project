here :: i_am ("code/um.R")

# importing dataset
df <- readRDS(here::here("clean_data", "clean_data.rds"))

# Mitoses plot
ggplot() + 
  geom_point(aes(df$Mitoses,df$Class)) + 
  geom_smooth(aes(df$Mitoses,df$Class),
              method = "glm", se = FALSE, method.args = list(family = "binomial"), 
              color = "#557153", size = 1.2) +
  ggtitle("Breast Cancer Diagnosis \nusing Mitoses") +
  ylab("Tumour type") +
  xlab("Mitoses") +
  scale_y_continuous(breaks = c(0, 1), labels = c("Benign", "Malignant")) +
  theme(plot.title = element_text(size = 25, face="bold",margin = margin(10,0,10,0)),
        plot.background = element_rect(fill = "#F0EBCE"),
        panel.background = element_rect(fill = "#F0EBCE"),
        axis.text.x = element_text(size = 15),
        axis.title.x = element_text(size = 20, margin = margin(11,0,10,0)),
        axis.text.y = element_text(size = 15),
        axis.title.y = element_text(size = 20, margin=margin(0,10,0,11)),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.margin = margin(0,0.5,0,0, "cm"))

# additional plot for combination
um <- ggplot() + 
  geom_point(aes(df$Mitoses,df$Class)) + 
  geom_smooth(aes(df$Mitoses,df$Class),
              method = "glm", se = FALSE, method.args = list(family = "binomial"), 
              color = "#557153", size = 1.2) +
  scale_y_continuous(breaks = c(0, 1), labels = c("Benign", "Malignant")) +
  theme(plot.background = element_rect(fill = "#F0EBCE"),
        panel.background = element_rect(fill = "#F0EBCE"),
        axis.text.x = element_text(size = 10),
        axis.title.x = element_blank(),
        axis.text.y = element_text(size = 10),
        axis.title.y = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.margin = margin(0,0.5, 0, 0, "cm")) +
  annotate("text",x=6.5, y=0.2, label="Mitoses", size = 6)

ggsave(
  here::here ("output/um.png"), 
  plot = um)