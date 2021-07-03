server <- function(input, output) {
    
    output$calculation <- renderPrint({
        results <- input$Hg + input$SaO2
        results
    })
}
