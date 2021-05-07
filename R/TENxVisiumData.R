#' @name TENxVisiumData
#' @title TENxVisiumData
#' 
#' @aliases 
#' HumanBreastCancerIDC
#' HumanBreastCancerILC
#' HumanCerebellum
#' HumanColorectalCancer
#' HumanGlioblastoma
#' HumanHeart
#' HumanLymphNode
#' HumanOvarianCancer
#' HumanSpinalCord
#' MouseBrainCoronal
#' MouseBrainSagittalPosterior
#' MouseBrainSagittalAnterior
#' MouseKidneyCoronal
#' 
#' @description 
#' Collection of Visium spatial gene expression datasets by 10X Genomics, 
#' formatted into objects of class SpatialExperiment. 
#' Data cover various organisms and tissues, and include: 
#' single- and multi-section experiments, as well as single sections 
#' subjected to both whole transcriptome and targeted panel analysis. 
#' Datasets may be used for testing of and as examples in packages, 
#' for tutorials and workflow demonstrations, or similar purposes.
#'
#' @details 
#' The following Visium Spatial Transcriptomics 
#' datasets by 10X Genomics are currently available 
#' (see the package vignette for links to details):
#' \itemize{
#' \item{HumanBreastCancerIDC}
#' \item{HumanBreastCancerILC}
#' \item{HumanCerebellum}
#' \item{HumanColorectalCancer}
#' \item{HumanGlioblastoma}
#' \item{HumanHeart}
#' \item{HumanLymphNode}
#' \item{HumanOvarianCancer}
#' \item{HumanSpinalCord}
#' \item{MouseBrainCoronal}
#' \item{MouseBrainSagittalPosterior}
#' \item{MouseBrainSagittalAnterior}
#' \item{MouseKidneyCoronal}
#' }
#'   
#' @return 
#' a \code{\linkS4class{SpatialExperiment}}
#' with rows corresponding to samples (spots) 
#' and columns to features (transcripts).
#' If, in addition to whole transcriptome analysis, 
#' the specified dataset contains measurements 
#' from targeted panel analysis/es, 
#' these will be stored as \code{altExps}.
#'   
#' @examples
#' # initialize hub instance
#' eh <- ExperimentHub()
#' 
#' # query for TENxVisium datasets
#' (q <- query(eh, "TENxVisium"))
#' 
#' # retrieve dataset of interest
#' (spe <- eh[["EH6000"]])
#' altExpNames(spe)
#' altExp(spe, "TargetedNeuroscience")
#' 
#' @author Helena L. Crowell
NULL