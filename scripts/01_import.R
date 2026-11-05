library(tidyverse)
digimon_list <- read_csv("DigiDB_digimonlist.csv")
view(digimon_list)

digimon_list |> 
  select(`Lv50 HP`, `Lv50 SP`)
  