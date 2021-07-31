server <- function(input, output) {
    # country <- reactive({ input$country })
    survey_data <- read.csv("/Users/grigorijschleifer/Desktop/R/Shiny/ShinyTutorial/only_scores.csv", 
                            stringsAsFactors = TRUE)
    
    
    output$scores_barplot <- renderPlot({
        
        counted_result <- survey_data %>%
            select(., -X) %>%
            dplyr::filter(
                Country == input$country) %>%
            dplyr::filter(!is.na(ASA.Class)) %>% 
            gather(key = "Question",
                   value = "Answer",
                   c(-id, -Country)) %>%
            dplyr::filter(Answer == "Yes") %>% 
            count(Question, Answer)
        
        
        df_for_scores <- data.frame(score = c("ASA.Class", "Apfel.Score", "NYHA.Score", "ARISCAT.Score", "rRCI", "POSPOM"),
                                    n = c(1,0,0,0,0,0))
        
        for(i in counted_result$Question) {
            df_for_scores$n[df_for_scores$score == i] <- counted_result$n[counted_result$Question == i]
        }
        
        df_for_scores %>% 
            ggplot(aes(x = score, y = n)) +
            geom_col() 
})

}