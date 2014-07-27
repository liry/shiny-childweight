library(shiny)

predict <- function(age) 3 * age + 7

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$age})
    output$prediction <- renderPrint({predict(input$age)})
  }
)