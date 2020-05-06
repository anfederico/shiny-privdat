library(shiny)
library(shinyjs)
library(shinythemes)
library(reactable)
library(magrittr)

# Initalize data and resources
source(file.path("data", "oracle.R"), local=TRUE)

ui <- navbarPage(
    title="Shiny - Private Data",
    theme = shinytheme("simplex"),
    source(file.path("ui", "data.R"), local=TRUE)$value
)

server <- function(input, output, session) {
    source(file.path("server", "data.R"), local=TRUE)$value
}

shinyApp(ui=ui, server=server)
