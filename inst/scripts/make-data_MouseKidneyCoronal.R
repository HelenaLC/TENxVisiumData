# Mouse Kidney Section (Coronal)

dset <- "MouseKidneyCoronal"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Mouse_Kidney",
        "V1_Mouse_Kidney_filtered_feature_bc_matrix.tar.gz",
        "V1_Mouse_Kidney_spatial.tar.gz"
    )
)

source("inst/scripts/make-data.R")
.make_data(dset, urls)
