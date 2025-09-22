rfNews_RFRW <- function() {
    newsfile <- file.path(system.file(package="RFRW"), "NEWS")
    file.show(newsfile)
}
