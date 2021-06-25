server <- function(input, output) {
    output$hist <- renderPlot({
        title <- "100 random normal values"
        hist(rnorm(input$num), main = title)
    })    
}
