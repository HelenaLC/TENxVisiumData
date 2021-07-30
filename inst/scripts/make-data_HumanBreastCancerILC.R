# Human Breast Cancer

dset <- "HumanBreastCancerILC"

# Whole Transcriptome Analysis

urls <- list(WholeTranscriptome = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Parent_Visium_Human_BreastCancer",
    "Parent_Visium_Human_BreastCancer_filtered_feature_bc_matrix.tar.gz",
    "Parent_Visium_Human_BreastCancer_spatial.tar.gz"))

x <- .make_data(dset, urls, FALSE)

# Targeted, Immunology Panel

urls <- list(TargetedImmunology = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Targeted_Visium_Human_BreastCancer_Immunology",
    "Targeted_Visium_Human_BreastCancer_Immunology_filtered_feature_bc_matrix.tar.gz",
    "Targeted_Visium_Human_BreastCancer_Immunology_spatial.tar.gz"))

y <- .make_data(dset, urls, FALSE)

altExp(x, names(urls)) <- y
spe <- x; rm(x, y)

fnm <- paste0(dset, ".rda")
save(spe, file = file.path(dir, fnm))
