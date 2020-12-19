# Mouse Brain Section (Coronal)

dset <- "MouseBrainCoronal"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Adult_Mouse_Brain",
        "V1_Adult_Mouse_Brain_filtered_feature_bc_matrix.h5",
        "V1_Adult_Mouse_Brain_spatial.tar.gz"
    )
)

source("inst/make-data.R")
.make_data(dset, urls)
