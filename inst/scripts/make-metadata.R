df <- data.frame(
    BiocVersion = "3.12",
    Genome = NA,
    SourceType = NA,
    SourceVersion = NA,
    Coordinate_1_based = TRUE,
    DataProvider = "10X Genomics",
    Chemistry = "Chromium_v1",
    RDataClass = "SpatialExperiment",
    DispatchClass = "Rda",
    Maintainer = "Helena L. Crowell <helena@crowell.eu>"
)

dfs <- list(
    data.frame(
        Title = "HumanBreastCancer",
        Species = "Homo sapiens",
        TaxonomyId = "9606",
        RDataPath = "TENxVisiumData/HumanBreastCancer.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Breast_Cancer_Block_A_Section_1",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of Invasive Ductal Carcinoma breast tissue",
            "(two sections of 10 um thickness)")
    ),
    data.frame(
        Title = "HumanHeart",
        Species = "Homo sapiens",
        TaxonomyId = "9606",
        RDataPath = "TENxVisiumData/HumanHeart.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Human_Heart",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of human heart tissue",
            "(one section of 10 um thickness)")
    ),
    data.frame(
        Title = "HumanLymphNode",
        Species = "Homo sapiens",
        TaxonomyId = "9606",
        RDataPath = "TENxVisiumData/HumanLymphNode.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Human_Lymph_Node",
        Description = paste(
            "Visium spatial gene expression dataset",
            "or human lymph node tissue",
            "(one section of 10 um thickness)")
    ),
    data.frame(
        Title = "MouseKidneyCoronal",
        Species = "Mus musculus",
        TaxonomyId = "10090", 
        RDataPath = "TENxVisiumData/MouseKidneyCoronal.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Mouse_Kidney",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse kidney tissue",
            "(one section of 10 um thickness)")
    ),
    data.frame(
        Title = "MouseBrainCoronal",
        Species = "Mus musculus",
        TaxonomyId = "10090", 
        RDataPath = "TENxVisiumData/MouseBrainCoronal.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Adult_Mouse_Brain",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse brain tissue",
            "(one section of 10 um thickness;",
            "slice of the coronal plane)")
    ),
    data.frame(
        Title = "MouseBrainSagittalPosterior",
        Species = "Mus musculus",
        TaxonomyId = "10090", 
        RDataPath = "TENxVisiumData/MouseBrainSagittalPosterior.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Mouse_Brain_Sagittal_Posterior",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse brain tissue",
            "(two sections of 10 um thickness;",
            "sagittal slice of the posterior)")
    ),
    data.frame(
        Title = "MouseBrainSagittalAnterior",
        Species = "Mus musculus",
        TaxonomyId = "10090", 
        RDataPath = "TENxVisiumData/MouseBrainSagittalAnterior.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Mouse_Brain_Sagittal_Anterior",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse brain tissue",
            "(two sections of 10 um thickness;",
            "sagittal slice of the anterior")
    )
)

dfs <- lapply(dfs, cbind, df)
df <- do.call(rbind, dfs)

fnm <- "inst/extdata/metadata.csv"
write.csv(df, fnm, row.names = FALSE)