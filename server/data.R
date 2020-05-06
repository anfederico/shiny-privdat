# Password protected data
is.valid <- function(key) {
  key == Sys.getenv("SHINY_KEY")
}

is.private <- function(dataset) {
    c("Midwest"=F, "Economics"=F, "Diamonds (Private)"=T)[[dataset]]
} 

# Handle data changes
observeEvent(input$data_change, {
    if (is.private(input$data_select) && !is.valid(input$data_key)) {
        return()
    }
    oracle$dataset <- input$data_select 
    oracle$data <- storage[[input$data_select]]
    update.inputs(session)
})

# Update ui when data changes
update.inputs <- function(session) {
}

output$data <- renderReactable({
    data <- oracle.data()
    data %>%
    reactable(searchable=FALSE,
              resizable=TRUE,
              compact=TRUE, 
              fullWidth=TRUE,
              defaultPageSize=25,
              striped=TRUE,
              style=list(backgroundColor="#FCFCFC"),
              showPageSizeOptions=FALSE)
})
