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
#' @return an object of class \code{\link{SpatialExperiment}} (SPE).
#' 
#' Datasets with multiple sections are consolidated into
#' a single SPE with \code{colData} field \code{sample_id} 
#' indicating each spot’s sample of origin.
#' 
#' Datasets of targeted analyses are provided as a nested SPE, 
#' with whole transcriptome measurements as primary data, and 
#' those obtained from targeted panels as \code{altExp}s. 
#' 
#' @examples 
#' (spe <- TENxVisiumData("HumanHeart"))
#' 
#' @importFrom utils download.file
#' @export

TENxVisiumData <- function(
    dataset = c(
        "HumanBreastCancerIDC", 
        "HumanBreastCancerILC", 
        "HumanCerebellum", 
        "HumanColorectalCancer", 
        "HumanGlioblastoma", 
        "HumanHeart", 
        "HumanLymphNode", 
        "HumanOvarianCancer", 
        "HumanSpinalCord", 
        "MouseBrainCoronal", 
        "MouseBrainSagittalPosterior", 
        "MouseBrainSagittalAnterior", 
        "MouseKidneyCoronal"),
    path = "tmp", 
    delete = TRUE, 
    verbose = FALSE)
{
    url <- switch(match.arg(dataset),
        HumanBreastCancerIDC = "https://www.dropbox.com/s/e61r2e80ti9elpk/HumanBreastCancerIDC.rda?dl=1",
        HumanBreastCancerILC = "https://www.dropbox.com/s/3c4tihxmj3yav1y/HumanBreastCancerILC.rda?dl=1",
        HumanCerebellum = "https://www.dropbox.com/s/1hg5dvojtfanhln/HumanCerebellum.rda?dl=1",
        HumanColorectalCancer = "https://www.dropbox.com/s/hohvvfpu80wtk3l/HumanColorectalCancer.rda?dl=1",
        HumanGlioblastoma = "https://www.dropbox.com/s/65v7v0kezonunj9/HumanGlioblastoma.rda?dl=1",
        HumanHeart = "https://www.dropbox.com/s/l3w26opg1w3uvto/HumanHeart.rda?dl=1",
        HumanLymphNode = "https://www.dropbox.com/s/4pq3ootb23iox0z/HumanLymphNode.rda?dl=1",
        HumanOvarianCancer = "https://www.dropbox.com/s/hscsqaja4ab2wx9/HumanOvarianCancer.rda?dl=1",
        HumanSpinalCord = "https://www.dropbox.com/s/itqfoiph5ccr2jf/HumanSpinalCord.rda?dl=1",
        MouseBrainCoronal = "https://www.dropbox.com/s/qynv00xm1a457zh/MouseBrainCoronal.rda?dl=1",
        MouseBrainSagittalAnterior = "https://www.dropbox.com/s/7bq7xt08h01z6c8/MouseBrainSagittalAnterior.rda?dl=1",
        MouseBrainSagittalPosterior = "https://www.dropbox.com/s/gg61qnt5nb7qlj0/MouseBrainSagittalPosterior.rda?dl=1",
        MouseKidneyCoronal = "https://www.dropbox.com/s/fvmpm4ivqgdey9v/MouseKidneyCoronal.rda?dl=1")
    
    if (!dir.exists(path)) dir.create(path)
    
    fnm <- file.path(path, gsub("\\?.*$", "", basename(url)))
    download.file(url, fnm, mode = "wb", quiet = !verbose)
    obj <- load(fnm)
    
    if (delete) unlink(path, recursive = TRUE)
    
    get(obj)
}
