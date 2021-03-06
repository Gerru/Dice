
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Dice throw simulator"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("dice",
                  "Number of dice:",
                  min = 1,
                  max = 10,
                  value = 3),
      sliderInput("throws",
                  "Number of throws:",
                  min = 50,
                  max = 500,
                  value = 100)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("ggdensPlot")
    )
  )
))
