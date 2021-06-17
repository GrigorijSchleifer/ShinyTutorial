server <- function(input, output) {
    output$hist <- renderPlot({
        hist(rnorm(100))
    })    
}
