
library(shiny)

ui <- fluidPage(

  sliderInput("x", label = "If x is", min =1, max = 50, value = 30),
  "then x times 5 is",
  textOutput("product")
  
)

server <- function(input, output, session) {

  # x <- get(input$x)
  # The above did not work
  
  output$product <- renderText({
    input$x * 5
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
