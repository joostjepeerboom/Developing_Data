library(shiny)

shinyServer(function(input, output){
  output$newHist <- renderPlot({
    
    simulation <- data.frame(ncol=2, nrow=input$id3)
    names(simulation) <- c("Index", "Mean")
    
    mean_simu <- function(n, lambda){
      mean(rexp(n, lambda))
    }
    
    for(i in 1:input$id3){
      simulation[i, 1] <- i
      simulation[i, 2] <- mean_simu(input$id2, input$id1)
    }
    
    hist(simulation$Mean, main = 'Frequences of Averages', xlab='Averages', ylab='Frequencies',col="green")
    
    })
})