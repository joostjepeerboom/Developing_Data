library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Examining The Mean of the Exponential Distribution"),
  sidebarPanel(
      
      h5('The exponential distribution has an average (mean) and standard deviation of 1/lambda'),
      h5(' '),
      h5('The Shiny example follows an exercise from the Statistical Inference Course on Coursera'),
      
      
      numericInput('id1', 'Value for lambda', 0.2, min = 0, max = 10, step = 0.1),
      numericInput('id2', 'Sample size', 40, min = 0, max = 100, step = 1),
      numericInput('id3', 'Amount of simulations', 1000, min = 0, max = 10000, step = 1)      ),
  mainPanel(
      plotOutput('newHist')
    )
  ))