

library(shiny)

ui <- fluidPage(

  selectInput("longlist", "Choose from this list",
              list(`East Coast` = list("NY", "NJ", "CT"),
                   `West Coast` = list("CA", "WA", "OR")
              )

  )
)

server <- function(input, output) {


}

# Run the application 
shinyApp(ui = ui, server = server)
