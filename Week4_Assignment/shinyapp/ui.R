library(shiny)

shinyUI(pageWithSidebar(
  
  
  headerPanel("Miles Per Gallon Vs Transmission, Weight and Number of Cylinders.
              Please choose each independent variable to see how it is impacting the miles per galon and also find the regression report"),
  
  sidebarPanel(
    selectInput("variables", "Dependent Variables: ", 
                list("Transmission" = "am",
                     "Number of Cylinders" = "cyl",
                     "Weight" = "wt"))

  ),
  mainPanel(
    h3(textOutput("caption")),
    plotOutput("mpgPlot"),
    verbatimTextOutput("modelSummary")
  )
))