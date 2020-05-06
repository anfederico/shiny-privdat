datasets <- c("Midwest", "Economics", "Diamonds (Private)")

storage <- list()
storage[[datasets[[1]]]] <- readRDS("data-raw/midwest.rds")
storage[[datasets[[2]]]] <- readRDS("data-raw/economics.rds")
storage[[datasets[[3]]]] <- readRDS("data-raw/diamonds.rds")

# Variables used to intialize ui data fields (obsolete on dataset change)
dataset <- "Midwest"
data <- storage[[dataset]]

# The oracle manages reactive data (server side)
oracle <- reactiveValues(
    dataset = dataset,
    data = data
)

# Helper functions for communicating with the oracle
oracle.get <- function(x) {
    oracle[[x]]
}
oracle.dataset <- function() {
    oracle.get("dataset")
}
oracle.data <- function() {
    oracle.get("data")
}
