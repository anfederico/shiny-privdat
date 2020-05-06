tabPanel("Example",
  sidebarPanel(
    selectInput("data_select", label="Datasets", choices=datasets),
    textInput("data_key", label="Private Key"),
    actionButton("data_change", "Change Dataset"),
    width=3
  ),
  mainPanel(
    reactableOutput("data"),
    width=9
  )
)
