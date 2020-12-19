#' TENxVisiumData
#' 
#' Function to load 10X Genomics Visium spatial gene expression datasets
#' from the \code{TENxVisiumData} \code{ExperimentHub} package.
#' 
#' @param dataset character string. Specifies which dataset to load.
#' @param path character string. Directory to save downloaded files to.
#' @param delete logical. If TRUE (default), 
#'   all files will be deleted upon completion.
#' @param verbose logical. If FALSE (default), status messages
#'   and progress bar during file download will be suppressed.
#' 
#' @examples 
#' (spe <- TENxVisiumData("HumanHeart"))
#' 
#' @importFrom utils download.file
#' @export

TENxVisiumData <- function(dataset = c(
    "HumanBreastCancer", "HumanHeart", "HumanLymphNode", 
    "MouseKidneyCoronal", "MouseBrainCoronal",
    "MouseBrainSagittalPosterior", "MouseBrainSagittalAnterior"),
    path = "tmp", delete = TRUE, verbose = FALSE)
{
    url <- switch(match.arg(dataset),
        HumanBreastCancer = "https://www.dropbox.com/s/2z79jgjmy11v7k8/HumanBreastCancer.rda?dl=1",
        HumanHeart = "https://www.dropbox.com/s/k799ljud54dsrio/HumanHeart.rda?dl=1",
        HumanLymphNode = "https://www.dropbox.com/s/6yra1gtgw22ujrh/HumanLymphNode.rda?dl=1",
        MouseKidneyCoronal = "https://www.dropbox.com/s/8b35cigztksyorw/MouseKidneyCoronal.rda?dl=1",
        MouseBrainCoronal = "https://www.dropbox.com/s/x0gt47lg2ximtsb/MouseBrainCoronal.rda?dl=1",
        MouseBrainSagittalPosterior = "https://www.dropbox.com/s/6btyr2w37trkabd/MouseBrainSagittalPosterior.rda?dl=1",
        MouseBrainSagittalAnterior = "https://www.dropbox.com/s/uzmyxjzemh8sx2k/MouseBrainSagittalAnterior.rda?dl=1")
    
    if (!dir.exists(path)) dir.create(path)

    fnm <- gsub("\\?.*$", "", basename(url))
    fnm <- file.path(path, fnm)
    download.file(url, fnm, mode = "wb", quiet = !verbose)
    obj <- load(fnm)
    
    if (delete) unlink(path, recursive = TRUE)
    
    get(obj)
}
