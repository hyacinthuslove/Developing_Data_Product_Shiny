library(shiny)
library("datasets")

# Define UI for this simple Shiny application
shinyUI(fluidPage(
  
  # A Simple Shiny App to show summary and number of observations for a dataset
  titlePanel("Show dataset description, summary and observations"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view. 
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("trees", "iris", "sleep")),
      
      numericInput("obs", "Number of observations to view:", 5),
      
      helpText("Note: while the data view will show only the specified",
               "number of observations, the summary is based",
               "on the entire dataset."),
      
      submitButton("Change Dataset")
    ),
    
    # Show a summary of the dataset and an HTML table with the
    # requested number of observations. 
    mainPanel(
      h4("Description"),
      verbatimTextOutput("desc"),
      h4("Summary"),
      verbatimTextOutput("summary"),
      h4("Observations"),
      tableOutput("view")
    )
  )
))