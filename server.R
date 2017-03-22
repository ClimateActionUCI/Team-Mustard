library(shiny)
library(ggplot2)
library(ggmap)

shinyServer(function(input, output) {
  
   
  output$distPlot <- renderPlot({ states <- map_data('state')
  california <- states[states$region == 'california', ]
    ggplot(data=california) + 
      geom_polygon(aes(x=long, y=lat), fill='orange', colour='red') + geom_point(data=Brapa_lat_long_2005_2015_1_, aes(x=Longitude, y=Latitude), colour='darkgreen')
  })
  
})
