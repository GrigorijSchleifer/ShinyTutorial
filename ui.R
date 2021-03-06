# https://grigorij-schleifer.shinyapps.io/FirstTutorial/

library(shiny)
library(shinythemes)
library(tidyverse)
library('rsconnect')

survey_data <- read.csv("/Users/grigorijschleifer/Desktop/R/Shiny/ShinyTutorial/only_scores.csv")

choices = c("Albania", "Austria", "Belarus", "Belgium", "Bosnia and Herzegovina", 
            "Bulgaria", "Croatia", "Cyprus", "Czechia", "Denmark", "Estonia", 
            "Finland", "France", "Germany", "Greece", "Hungary", "Iceland", 
            "Ireland", "Israel", "Italy", "Kazakhstan", "Kosovo", "Latvia", 
            "Liechtenstein", "Lithuania", "Malta", "Moldova", "Netherlands", 
            "Norway", "Poland", "Portugal", "Romania", "Russia", 
            "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", 
            "Turkey", "Ukraine", "United Kingdom (UK)", "Other")

ui <- fluidPage(
    titlePanel(title = h4("Risk scores in different countries", align="center")),
    
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "country", 
                        label = "Select country:",
                        selected = "Germany", 
                        choices = choices),
        ), 
        
    mainPanel(
        plotOutput("scores_barplot",height = 500))
))





# ui <- fluidPage(
#     theme = shinytheme("superhero"),
#     
#     column(width = 10,
#            fluidRow(
#                column(4, numericInput(
#                    "Hg", label = "Hg", 15, min = 0, max = 20, width = '100%')),
#                column(4, numericInput(
#                    "SaO2", label = "SaO2", 100, min = 0, max = 100, width = '100%')),
#                column(4, numericInput(
#                    "ScvO2", label = "ScvO2", 100, min = 0, max = 100, width = '100%')),
#                column(4, numericInput(
#                    "PaO2", label = "PaO2", 100, min = 0, max = 100, width = '100%')),
#                column(4, numericInput(
#                    "PvO2", label = "PvO2", 100, min = 0, max = 100, width = '100%'))
#                )
#            ),
#     
#     verbatimTextOutput(outputId = "calculation")
# )
# 


















#
# rm(list = ls())
#
# Sa02
#
# blood_manual <- matrix(dimnames = list(
#     c(
#
#     )
# ))
#
#
# CaO2 <- as.numeric()
#
#
#
# shunt_calc <- function(value) {
#     PAO2 <- as.numeric(value["fiO2",]*(value["Patm",]-47)-(value["PaCO2",]/0.8)+2)
#     # CAPILLARY OXYGEN CONTENT
#     # CcO2 = (Hgb * 1.31) + (0.0031 * PAO2)
#     # no multiplication with the arterial sat fraction
#     Cco2 <- as.numeric(value["Hb",]*1.34)+(0.0031*PAO2)
#
#     # ARTERIAL OXYGEN CONTENT
#     Cao2 <- as.numeric(value["Hb",]*1.34*(value["fO2art",]/100))+(0.0031*value["PaO2",])
#
#     # MIXED VEONOUS OXYGEN CONTENT
#     Cvo2 <- as.numeric(value["Hb",]*1.34*(value["fO2mven",]/100))+(0.0031*value["PvO2",])
#
#     # SHUNT
#     SHUNT <- ((Cco2-Cao2)/(Cco2-Cvo2))*100
#     # dont forget to assign the method return to a new object
#     # otherwise everything stays inside the method
#
#     return(cat("The shunt is:", as.numeric(SHUNT), "\n", "\n",
#                "PAO2 is", PAO2, "\n",
#                "Cco2 is", Cco2, "\n",
#                "Cao2 is", Cao2, "\n",
#                "Cvo2 is", Cvo2))
# }
#
#
# shunt_calc(blood_manual)