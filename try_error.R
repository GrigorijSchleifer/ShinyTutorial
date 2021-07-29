new_data <- data_v %>%
    select(c(
        "id",
        "G01Q06",
        "G02Q26_SQ001",
        "G02Q26_SQ002",
        "G02Q26_SQ003",
        "G02Q26_SQ004",
        "G02Q26_SQ005",
        "G02Q26_SQ006"
        )
    )

colnames(new_data) <- c("id", "Country", "ASA-Class", "Apfel-Score", "NYHA-Score", "ARISCAT-Score","rRCI", "POSPOM")

new_data %>% 
    gather(key = "Question",
           value = "Answer",
           c(-id, -Country)) %>% 
    group_by(Country) %>% 
    tapply(vector, index, function)
    
