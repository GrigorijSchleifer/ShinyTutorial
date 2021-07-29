server <- function(input, output) {
    # country <- reactive({ input$country })
    data_v <- read.csv("/Users/grigorijschleifer/Desktop/R/Shiny/ShinyTutorial/dt_countries.csv")
    
    output$scores_barplot <- renderPlot({
        data_v %>% 
            select(c("G01Q04", "G01Q06")) %>% 
            dplyr::filter(G01Q06 == input$country) %>% 
            ggplot(aes(x = G01Q04)) +
            geom_bar()
})

}