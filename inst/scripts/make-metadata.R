df <- data.frame(
    BiocVersion = "3.13",
    Genome = NA,
    SourceType = "tar.gz",
    SourceVersion = NA,
    Coordinate_1_based = TRUE,
    DataProvider = "10X Genomics",
    Chemistry = "Chromium_v1",
    RDataClass = "SpatialExperiment",
    DispatchClass = "Rda",
    Maintainer = "Helena L. Crowell <helena@crowell.eu>",
    stringsAsFactors = FALSE
)

dfs <- list(
    data.frame(
        Title = "HumanBreastCancerIDC",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanBreastCancerIDC.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Breast_Cancer_Block_A_Section_1",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of Invasive Ductal Carcinoma breast tissue",
            "(two sections of 10 um thickness)")
    ),
    data.frame(
        Title = "HumanBreastCancerILC",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanBreastCancerILC.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_BreastCancer",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of Invasive Lobular Carcinoma breast tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted immunology panel)")
    ),
    data.frame(
        Title = "HumanCerebellum",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanCerebellum.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_Cerebellum",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of human cerebellum tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted gene signature panel)")
    ),
    data.frame(
        Title = "HumanColorectalCancer",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanCerebellum.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_ColorectalCancer",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of Invasive Adenocarcinoma large intestine tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted neuroscience panel)")
    ),
    data.frame(
        Title = "HumanGlioblastoma",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanGlioblastoma.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_Glioblastoma",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of human glioblastoma multiforme tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted pan-cancer panel)")
    ),
    data.frame(
        Title = "HumanHeart",
        Species = "Homo sapiens",
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
        RDataPath = "TENxVisiumData/HumanLymphNode.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Human_Lymph_Node",
        Description = paste(
            "Visium spatial gene expression dataset",
            "or human lymph node tissue",
            "(one section of 10 um thickness)")
    ),
    data.frame(
        Title = "HumanOvarianCancer",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanOvarianCancer.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_OvarianCancer",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of ovarian Endometrial Adenocarcinoma tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted immunology panel",
            "+ targeted pan-cancer panel)")
    ),
    data.frame(
        Title = "HumanSpinalCord",
        Species = "Homo sapiens",
        RDataPath = "TENxVisiumData/HumanSpinalCord.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.2.0/Parent_Visium_Human_SpinalCord",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of human spinal cord tissue",
            "(one section of 10 um thickness;",
            "whole transcriptome analysis",
            "+ targeted neuroscience panel)")
    ),
    data.frame(
        Title = "MouseBrainCoronal",
        Species = "Mus musculus",
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
        RDataPath = "TENxVisiumData/MouseBrainSagittalAnterior.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Mouse_Brain_Sagittal_Anterior",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse brain tissue",
            "(two sections of 10 um thickness;",
            "sagittal slice of the anterior")
    ),
    data.frame(
        Title = "MouseKidneyCoronal",
        Species = "Mus musculus",
        RDataPath = "TENxVisiumData/MouseKidneyCoronal.rda",
        SourceUrl = "https://support.10xgenomics.com/spatial-gene-expression/datasets/1.1.0/V1_Mouse_Kidney",
        Description = paste(
            "Visium spatial gene expression dataset",
            "of mouse kidney tissue",
            "(one section of 10 um thickness)")
    )
)

dfs <- lapply(dfs, cbind, df)
df <- do.call(rbind, dfs)

tax_ids <- c(
    "Homo sapiens" = "9606",
    "Mus musculus" = "10090")
df$TaxonomyId <- tax_ids[df$Species]

fnm <- "inst/extdata/metadata.csv"
write.csv(df, fnm, row.names = FALSE)
