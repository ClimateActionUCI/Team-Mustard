library(shiny)

shinyUI(fluidPage(
  fluidRow(titlePanel("Brassia Rapa spread over the next 90 years assuming"),
           mainPanel(plotOutput("distPlot")),
    sliderInput("Year", "Year",
                min=2010, max=2100, value=2050, step=10))))

