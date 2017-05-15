library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Miles Per Gallon Vs Transmission, Weight and Number of Cylinders"),
  
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