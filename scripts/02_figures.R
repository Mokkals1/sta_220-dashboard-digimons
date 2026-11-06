library(tidyverse)
library(dplyr)
library(ggplot2)


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
# Creating dataframe between HP and SP
relationship_between_HP_SP <- digimon_list |> 
  select(`Lv50 HP`, `Lv50 SP`)

# Scatter plot
ggplot(relationship_between_HP_SP, aes(x = `Lv50 HP`, y = `Lv50 SP`)) +
  geom_point(color = "pink")+
  labs(
    
    title = "Relationship between HP and SP",
    x = "HP",
    
    y = "SP",
    caption = "Source: Digimon Database by Rachel Tatman"
  ) +
  theme_minimal()
  

