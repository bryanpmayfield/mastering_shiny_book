#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  # Create a reactive expression 
  
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })

  output$summary <- renderPrint({
    # Use the reactive expression created above by calling it like a function
    summary(dataset())
  })
  
  output$table <- renderTable({
    #dataset <- get(input$dataset, "package:datasets")
    dataset()
  })

}

# Run the application 
shinyApp(ui = ui, server = server)
