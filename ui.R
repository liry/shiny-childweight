library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Child weight prediction (1 - 13 years)"),
  sidebarPanel(
    h3('Controllbar'),
    sliderInput("age", "Age (in years):", min = 1, max = 13, value = 10)
  ),
  mainPanel(
    h3('Results of child weight prediction'),
    h4('Age you entered (in years) '),
    verbatimTextOutput("inputValue"),
    h4('Which resulted in a weight prediction (in kg) '),
    verbatimTextOutput("prediction"),
    h3("Documentation"),
    p("This application predicts weight of child between age 1 and 13."),
    h4("Controll"),
    p("Use slidebar to select age of child and see the weight prediction in the main panel.")
  )
))
