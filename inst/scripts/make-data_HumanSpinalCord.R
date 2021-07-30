# Human Spinal Cord

dset <- "HumanSpinalCord"

# Whole Transcriptome Analysis

urls <- list(WholeTranscriptome = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Parent_Visium_Human_SpinalCord",
    "Parent_Visium_Human_SpinalCord_filtered_feature_bc_matrix.tar.gz",
    "Parent_Visium_Human_SpinalCord_spatial.tar.gz"))

x <- .make_data(dset, urls, FALSE)

# Targeted, Neuroscience Panel

urls <- list(TargetedNeuroscience = list(
    "https://cf.10xgenomics.com/samples/spatial-exp/1.2.0/Targeted_Visium_Human_SpinalCord_Neuroscience",
    "Targeted_Visium_Human_SpinalCord_Neuroscience_filtered_feature_bc_matrix.tar.gz",
    "Targeted_Visium_Human_SpinalCord_Neuroscience_spatial.tar.gz"))

y <- .make_data(dset, urls, FALSE)

altExp(x, names(urls)) <- y
spe <- x; rm(x, y)

fnm <- paste0(dset, ".rda")
save(spe, file = file.path(dir, fnm))
