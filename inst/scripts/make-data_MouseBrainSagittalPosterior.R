# Mouse Brain Serial Section 1 & 2 (Sagittal-Posterior)

dset <- "MouseBrainSagittalPosterior"

urls <- list(
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Mouse_Brain_Sagittal_Posterior",
        "V1_Mouse_Brain_Sagittal_Posterior_filtered_feature_bc_matrix.tar.gz",
        "V1_Mouse_Brain_Sagittal_Posterior_spatial.tar.gz"
    ),
    list(
        "https://cf.10xgenomics.com/samples/spatial-exp/1.1.0/V1_Mouse_Brain_Sagittal_Posterior_Section_2",
        "V1_Mouse_Brain_Sagittal_Posterior_Section_2_filtered_feature_bc_matrix.tar.gz",
        "V1_Mouse_Brain_Sagittal_Posterior_Section_2_spatial.tar.gz"
    )
)

.make_data(dset, urls)
