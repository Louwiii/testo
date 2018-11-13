#' @title Shiny app for St-ëtersburg game
#'
#' @description Run a shiny app for St-Petersburg game
#'
#' @export
rrun_shiny <- function(){
    appDir <- system.file("shiny", package = "test")
    shiny::runApp(appDir, display.mode = "normal")
}
