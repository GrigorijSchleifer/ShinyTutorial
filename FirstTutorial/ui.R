library(shiny)

ui <- fluidPage(
    "Cool first app, once again",
    sliderInput(inputId = "num",
                label = "Choose a number",
                value = 25,
                min = 1,
                max = 100),
    plotOutput(outputId = "hist")
)

