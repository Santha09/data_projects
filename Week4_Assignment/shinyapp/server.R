library(shiny)
library(datasets)

shinyServer(function(input,output){
  
    mpgdata    <- mtcars
    mpgdata$am <- factor(mpgdata$am, labels = c("Automatic","Manual"))

    formulaText <- reactive({
      paste("mpg ~", input$variables)
    })
    
    output$caption <- renderText({
      formulaText()
    })
    
    model <- reactive({
        lm(as.formula(formulaText()), data = mpgdata)
    })
    
    output$mpgPlot <- renderPlot({
      plot(as.formula(formulaText()), data = mpgdata)
      abline(model(), col = "red")
    })
    
    output$modelSummary <- renderPrint({
     summary(model())
    })
    
})