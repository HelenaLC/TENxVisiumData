# Human Heart

dset <- "HumanHeart"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Human_Heart",
        "V1_Human_Heart_filtered_feature_bc_matrix.tar.gz",
        "V1_Human_Heart_spatial.tar.gz"
    )
)

.make_data(dset, urls)
