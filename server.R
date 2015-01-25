library(shiny)
library("datasets")

# Define server logic required to summarize and view the 
# selected dataset of number of observations defined.
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "trees" = trees,
           "iris" = iris,
           "sleep" = sleep)
  })
  
  
  # Description of the dataset
  output$desc <- renderPrint({
    switch(input$dataset,
           "trees" = "This data set provides measurements of the girth, height and volume of timber in 31 felled black cherry trees. Note that girth is the diameter of the tree (in inches) measured at 4 ft 6 in above the ground.",
           "iris" = "This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.",
           "sleep" = "Data which show the effect of two soporific drugs (increase in hours of sleep compared to control) on 10 patients.")
  })
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
  
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
})