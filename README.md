# sta_220-dashboard_digimons
Repository for my Dashboard Data

##What is this?
This is a dashboard on all the types of Digimon. It allows people especially people who have played 
“Digimon Story: Cyber Sleuth” which released for Playstation Vita in 2015 and Playstation 4 in 2016
to examine each digimon's abilities and craft the ultimate digimon team. This data was collected by Rachel Tatman
who Rachel Tataman who is an enthusiast in the field. She updated this data last 9 years ago when the last update of Digimon Story: Sleuth dropped.

##Where did this data come from?
Source: Kaggle, Rachael Tatman, 2017 File: DigiDB_digimonlist.csv

## How do I run it?
Open sta220-dashboard.Rproj, then run scripts/01_import.R and set working directory to archive2() in data.

## What does each script do?
01_import.R Converts the source data table into a usable dataset called
digimon_list.csv – which can be found in data.
02_figures.R displays code that plots various bar charts and scatterplots based on the variables in the datasets.

## What is in each folder?
data/: raw files, never edited by hand, as well as edited files.
scripts/: run in order by number.
output/: made by the scripts.

## Who made it, and when was it last updated?
Sahoj Mokkala, Created: 11/1/2026
Updated: 11/6/2026
