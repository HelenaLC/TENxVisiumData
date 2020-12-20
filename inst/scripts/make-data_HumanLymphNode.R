# Human Lymph Node

dset <- "HumanLymphNode"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Human_Lymph_Node",
        "V1_Human_Lymph_Node_filtered_feature_bc_matrix.tar.gz",
        "V1_Human_Lymph_Node_spatial.tar.gz"
    )
)

source("inst/script/make-data.R")
.make_data(dset, urls)
