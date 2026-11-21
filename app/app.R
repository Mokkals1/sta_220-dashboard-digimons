install.packages("shiny")
library(shiny)
library(bslib)
library(tidyverse)

digimon_list <- read_csv("data/DigiDB_digimonlist.csv")

# Define UI ----
ui <- page_sidebar(
  titlePanel("Digimon Attack vs Stage"),
  sidebarLayout(
    sidebarPanel(
      selectInput("Stages", "Types of Stages:", choices = c(
        "Baby",
        "In-training",
        "Rookie",
        "Champion",
        "Ultimate",
        "Mega",
        "Ultra",
        "Armor"
      ))
    ),
    mainPanel(
      plotOutput("Scatterplot")
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)