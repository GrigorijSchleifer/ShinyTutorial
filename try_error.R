survey_data %>%
    select(., -X) %>%
    dplyr::filter(
        Country == "Germany") %>%
    gather(key = "Question",
           value = "Answer",
           c(-id, -Country)) %>%
    # dplyr::filter(Answer == "Yes") %>% 
    count(Question, Answer) %>%
    group_by(Question) %>% 
    ggplot(aes(x = Question, y = n)) +
    geom_col() 



df_for_scores <- data.frame(Countries = c("ASA-Class", "Apfel-Score", "NYHA-Score", "ARISCAT-Score", "rRCI", "POSPOM"),
                            n = c(1,0,0,0,0,0))







# 
# levels(df_for_scores$Countries) <-  c("ASA-Class", "Apfel-Score", "NYHA-Score", "ARISCAT-Score", "rRCI", "POSPOM")
# 
# df_for_scores %>% 
#     ggplot(aes(x = Countries , y = n)) + 
#     geom_col()


# scores_only <- survey_data %>%
#     select(c(
#         "id",
#         "G01Q06",
#         "G02Q26_SQ001",
#         "G02Q26_SQ002",
#         "G02Q26_SQ003",
#         "G02Q26_SQ004",
#         "G02Q26_SQ005",
#         "G02Q26_SQ006"
#         )
#     )


# colnames(scores_only) <-
#     c(
#         "id",
#         "Country",
#         "ASA-Class",
#         "Apfel-Score",
#         "NYHA-Score",
#         "ARISCAT-Score",
#         "rRCI",
#         "POSPOM"
#     )