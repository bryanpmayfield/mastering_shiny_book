
library(shiny)

ui <- fluidPage(
  
  sliderInput("slid", "Select a value", min = 0, max = 100, value = 0, step = 5, 
              animate = animationOptions(loop = TRUE)
  )

)

server <- function(input, output) {


}

# Run the application 
shinyApp(ui = ui, server = server)
