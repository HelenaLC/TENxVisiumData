# to make all data, run:
# for (s in list.files("inst/scripts", "make-data", full.names = TRUE)) source(s)

.make_data <- function(dset, urls) 
{
    # set sample IDs
    names(urls) <- if (length(urls) > 1) {
        paste0(dset, seq_along(urls))
    } else dset
    
    # make temporary directory
    tmp <- tempdir()
    if (!dir.exists(tmp))
        dir.create(tmp)
    
    # download data
    for (smpl in names(urls)) 
    {
        dir <- file.path(tmp, smpl)
        if (!dir.exists(dir)) dir.create(dir)
        
        url <- do.call(file.path, urls[[smpl]][c(1, 2)])
        fnm <- "raw_feature_bc_matrix.h5"
        download.file(url, file.path(dir, fnm))
        
        url <- do.call(file.path, urls[[smpl]][c(1, 3)])
        fnm <- "spatial.tar.gz"
        download.file(url, file.path(dir, fnm))
        
        cmd <- sprintf("tar -C %s -xvzf", dir)
        system(paste(cmd, file.path(dir, fnm)))
    }
    
    # load data
    spe <- SpatialExperiment::read10xVisium(
        samples = file.path(tmp, names(urls)), 
        images = "lowres", load = TRUE)
    
    # save data
    dir <- "~/dropbox/TENxVisiumData"
    fnm <- paste0(dset, ".rda")
    save(spe, file = file.path(dir, fnm))
    
    # delete temporary files
    unlink(tmp, recursive = TRUE)
}
