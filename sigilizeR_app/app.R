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
app <- shinyApp (
  ui <- fluidPage(
    
    # Application title
    titlePanel("SigilzeR App"),
    
    # Sidebar with text input field
    sidebarLayout(
      sidebarPanel(
        textInput("sigil_input", "Input Text", width = "100%", placeholder = "Write your intent here")
      ),
      
      # Main panel for outputting results
      mainPanel(
        textOutput("sigil_output")
      )
    )
  ),
  server <- function(input, output) {
    
    source("../sigilize_text.R")
    output$sigil_output <- sigilize_text(input$sigil_input)
  }
)
  


# Define server logic required to draw a histogram
# server = function(input, output) {
#     
#     source("../sigilize_text.R")
#     output$sigil_output <- sigilize_text(input$sigil_input)
#     
# }

# Run the application 
# shinyApp(ui = ui, server = server)