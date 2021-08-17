# Human Breast Cancer (Block A Section 1 & 2)

dset <- "HumanBreastCancerIDC_v3.13"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Breast_Cancer_Block_A_Section_1",
        "V1_Breast_Cancer_Block_A_Section_1_filtered_feature_bc_matrix.tar.gz",
        "V1_Breast_Cancer_Block_A_Section_1_spatial.tar.gz"
    ),
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Breast_Cancer_Block_A_Section_2",
        "V1_Breast_Cancer_Block_A_Section_2_filtered_feature_bc_matrix.tar.gz",
        "V1_Breast_Cancer_Block_A_Section_2_spatial.tar.gz"
    )
)

.make_data(dset, urls)
