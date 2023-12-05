

library(shiny)

ui <- fluidPage(

sliderInput(
   "dates",
   "When should we deliver?",
   min = as.Date("2020-09-16"),
   max = as.Date("2020-09-23"),
   value = as.Date("2020-09-17")
)
  
)

server <- function(input, output) {


}

# Run the application 
shinyApp(ui = ui, server = server)
