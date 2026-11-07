#Import tidyverse and dlypr
library(tidyverse)
library(dplyr)

move_list <- read_csv("DigiDB_movelist.csv")
support_list <- read_csv("DigiDB_supportlist.csv")

move_list |> 
  anti_join(support_list, c("Name","Description"))
support_list |> 
  anti_join(move_list, c("Name","Description"))

all_move_list <- 