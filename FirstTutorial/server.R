server <- function(input, output) {
    country <- reactive({ input$country })
    
    output$scores_barplot <- renderPlot({
        data_v %>% 
            select(c("G01Q04", "G01Q06")) %>% 
            dplyr::filter(country) %>% 
            ggplot(aes(x = G01Q04)) +
            geom_bar()
})

}