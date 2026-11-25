library(shiny)
library(bslib)
library(tidyverse)

digimon <- read_delim("data/Digimon.csv", delim = ";", show_col_types = FALSE)

# Define UI ----
ui <- page_sidebar(
  title = "Digimon Attack vs Stage",
  sidebar = sidebar(
    selectInput(
      "attack_level",
      "Select Attack Level:",
      choices = c(
        "Level 1 Attack" = "ATK lvl 1",
        "Level 50 Attack" = "ATK lvl 50",
        "Level 99 Attack" = "ATK lvl 99"
      ),
      selected = "ATK lvl 50"
    )
  ),
  plotOutput("Scatterplot")
)

# Define server logic ----
server <- function(input, output) {
  
  # Map each column value to its corresponding point color
  point_colors <- c(
    "ATK lvl 1" = "pink",
    "ATK lvl 50" = "darkblue",
    "ATK lvl 99" = "lightblue"
  )
  
  output$Scatterplot <- renderPlot({
    ggplot(digimon, aes(x = Stage, y = .data[[input$attack_level]])) +
      geom_point(color = point_colors[input$attack_level]) +
      labs(
        title = paste("Relationship between Stage and", input$attack_level),
        x = "Stage",
        y = "Attack",
        caption = "Source: Digimon Database by Rachel Tatman"
      ) +
      theme_minimal()
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)