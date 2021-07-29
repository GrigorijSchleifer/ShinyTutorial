server <- function(input, output) {
    # country <- reactive({ input$country })
    survey_data <- read.csv("/Users/grigorijschleifer/Desktop/R/Shiny/ShinyTutorial/only_scores.csv", 
                            stringsAsFactors = TRUE, 
                            check.names = FALSE)
    
    output$scores_barplot <- renderPlot({
        survey_data %>%
            select(
                c(
                    "G01Q04",
                    "G02Q26_SQ001",
                    "G02Q26_SQ002",
                    "G02Q26_SQ003",
                    "G02Q26_SQ004",
                    "G02Q26_SQ005",
                    "G02Q26_SQ006"
                )
            ) %>%
            dplyr::filter(G01Q06 == input$country) %>%
            ggplot(aes(x = G01Q04)) +
            geom_bar()
})

}