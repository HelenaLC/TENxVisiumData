# Human Glioblastoma

dset <- "HumanGlioblastoma_v3.13"

# Whole Transcriptome Analysis

urls <- list(WholeTranscriptome = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Parent_Visium_Human_Glioblastoma",
    "Parent_Visium_Human_Glioblastoma_filtered_feature_bc_matrix.tar.gz",
    "Parent_Visium_Human_Glioblastoma_spatial.tar.gz"))

x <- .make_data(dset, urls, FALSE)

# Targeted, Pan-Cancer Panel

urls <- list(TargetedPanCancer = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Targeted_Visium_Human_Glioblastoma_Pan_Cancer",
    "Targeted_Visium_Human_Glioblastoma_Pan_Cancer_filtered_feature_bc_matrix.tar.gz",
    "Targeted_Visium_Human_Glioblastoma_Pan_Cancer_spatial.tar.gz"))

y <- .make_data(dset, urls, FALSE)

altExp(x, names(urls)) <- y
spe <- x; rm(x, y)

fnm <- paste0(dset, ".rda")
save(spe, file = file.path(dir, fnm))
