library(tidyverse)
library(dplyr)


digimon_list <- read_csv("DigiDB_digimonlist.csv")

average_memory_by_stage <- digimon_list |> 
  select(Stage, Memory) |> 
  group_by(Stage) |> 
  summarize(Average_Memory = mean(Memory, na.rm = TRUE))

# Bar plot
ggplot(average_memory_by_stage, aes(x = Stage, y = Average_Memory)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(
  
    title = "Average Memory by Digimon Stage",
    x = "Stage",
    
    y = "Average Memory"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    panel.grid.major.x = element_blank(), # Keeps grid lines only on the y-axis
    panel.grid.minor = element_blank()
  )