# Human Colorectal Cancer

dset <- "HumanColorectalCancer"

# Whole Transcriptome Analysis

urls <- list(WholeTranscriptome = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Parent_Visium_Human_ColorectalCancer",
    "Parent_Visium_Human_ColorectalCancer_filtered_feature_bc_matrix.tar.gz",
    "Parent_Visium_Human_ColorectalCancer_spatial.tar.gz"))

x <- .make_data(dset, urls, FALSE)

# Targeted, Gene Signature Panel

urls <- list(TargetedGeneSignature = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Targeted_Visium_Human_ColorectalCancer_GeneSignature",
    "Targeted_Visium_Human_ColorectalCancer_GeneSignature_filtered_feature_bc_matrix.tar.gz",
    "Targeted_Visium_Human_ColorectalCancer_GeneSignature_spatial.tar.gz"))

y <- .make_data(dset, urls, FALSE)
altExp(x, names(urls)) <- y

fnm <- paste0(dset, ".rda")
save(x, file = file.path(dir, fnm))
