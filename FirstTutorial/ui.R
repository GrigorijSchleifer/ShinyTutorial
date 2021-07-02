library(shiny)

ui <- fluidPage(
    sliderInput(inputId = "num",
                label = "Choose a number",
                value = 25,
                min = 1,
                max = 100),
    
    column(5, 
           fluidRow(column(4, numericInput("Hg", label = "Hg", 15, min = 0, max = 20, width = '100%')),
                    column(4, numericInput("SaO2", label = "SaO2", 100, min = 0, max = 100, width = '100%')),
                    column(4, numericInput("SvO2", label = "SvO2", 100, min = 0, max = 100, width = '100%')),
                    column(4, numericInput("PaO2", label = "PaO2", 100, min = 0, max = 100, width = '100%')),
                    column(4, numericInput("PvO2", label = "PvO2", 100, min = 0, max = 100, width = '100%')))),
        

    
    
    numericInput("PvO2", "PvO2", 100, min = 0, max = 100),
    numericInput("SaO2", "SaO2", 100, min = 0, max = 100),
    numericInput("SaO2", "SaO2", 100, min = 0, max = 100),
    numericInput("SaO2", "SaO2", 100, min = 0, max = 100),
    numericInput("SaO2", "SaO2", 100, min = 0, max = 100),
    numericInput("SaO2", "SaO2", 100, min = 0, max = 100),
    
    plotOutput(outputId = "hist")
)

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