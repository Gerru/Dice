
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  output$ggdensPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    nd <- input$dice
    nt <- input$throws
    x    <- replicate(nt, sum(sample(1:6, nd, replace = TRUE)))
    
    # draw the histogram with the specified number of dice
    a <- ggplot(data.frame(x), aes(x)) 
    a + geom_density(alpha=.2, fill="blue") + 
      geom_vline(aes(xintercept = mean(x)),   
                 color="red", linetype="dashed", size=1)
    
  })

  
})
