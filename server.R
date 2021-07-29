server <- function(input, output) {
    # country <- reactive({ input$country })
    survey_data <- read.csv("/Users/grigorijschleifer/Desktop/R/Shiny/ShinyTutorial/only_scores.csv", 
                            stringsAsFactors = TRUE)
    
       output$scores_barplot <- renderPlot({
            survey_data %>%
                select(., -X) %>%
                dplyr::filter(
                    Country == input$country) %>%
                gather(key = "Question",
                       value = "Answer",
                       c(-id, -Country)) %>%
                dplyr::filter(Answer == "Yes") %>% 
                count(Question, Answer) %>%
                ggplot(aes(x = Question, y = n)) +
                geom_bar(stat = "identity") 
})

}