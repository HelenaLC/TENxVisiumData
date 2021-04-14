# Human Cerebellum

dset <- "HumanCerebellum"
source("inst/scripts/make-data.R")

# Whole Transcriptome Analysis

urls <- list(WholeTranscriptome = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Parent_Visium_Human_Cerebellum",
    "Parent_Visium_Human_Cerebellum_filtered_feature_bc_matrix.tar.gz",
    "Parent_Visium_Human_Cerebellum_spatial.tar.gz"))

x <- .make_data(dset, urls, FALSE)

# Targeted, Neuroscience Panel

urls <- list(TargetedNeuroscience = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Targeted_Visium_Human_Cerebellum_Neuroscience",
    "Targeted_Visium_Human_Cerebellum_Neuroscience_filtered_feature_bc_matrix.tar.gz",
    "Targeted_Visium_Human_Cerebellum_Neuroscience_spatial.tar.gz"))

y <- .make_data(dset, urls, FALSE)
altExp(x, names(urls)) <- y

dir <- "~/dropbox/TENxVisiumData"
fnm <- paste0(dset, ".rda")
save(x, file = file.path(dir, fnm))
