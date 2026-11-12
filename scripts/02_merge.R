#Import tidyverse and dlypr
library(tidyverse)
library(dplyr)

move_list <- read_csv("DigiDB_movelist.csv")
support_list <- read_csv("DigiDB_supportlist.csv")


all_move_list <- rbind(move_list, support_list)
