#' @importFrom ExperimentHub createHubAccessors
#' @importFrom utils read.csv
.onLoad <- function(libname, pkgname) {
    fl <- system.file("extdata", "metadata.csv", package=pkgname)
    titles <- read.csv(fl, stringsAsFactors=FALSE)$Title
    createHubAccessors(pkgname, titles)
}