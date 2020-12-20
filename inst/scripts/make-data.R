# to make all data, run:
# for (s in list.files("inst/scripts", "make-data", full.names = TRUE)) source(s)

.make_data <- function(dset, urls, save = TRUE, path = "~/dropbox/TENxVisiumData") 
{
    # set sample IDs
    if (is.null(names(urls))) {
        nms <- if (length(urls) == 1) dset else paste0(dset, seq_along(urls))
    } else nms <- paste(dset, names(urls), sep = "_")
    names(urls) <- nms
    
    # make temporary directory
    tmp <- file.path(tempdir(), "TENxVisiumData")
    if (!dir.exists(tmp)) dir.create(tmp, recursive = TRUE)
    
    .untar <- function(dir, fnm) {
        cmd <- sprintf("tar -C %s -xzf", dir)
        system(paste(cmd, file.path(dir, fnm)))
    }
    
    # download data
    for (smpl in names(urls)) 
    {
        dir <- file.path(tmp, smpl)
        if (!dir.exists(dir)) dir.create(dir)
        
        url <- do.call(file.path, urls[[smpl]][c(1, 2)])
        fnm <- "filtered_feature_bc_matrix.tar.gz"
        download.file(url, file.path(dir, fnm), quiet = TRUE)
        .untar(dir, fnm)
        
        url <- do.call(file.path, urls[[smpl]][c(1, 3)])
        fnm <- "spatial.tar.gz"
        download.file(url, file.path(dir, fnm), quiet = TRUE)
        .untar(dir, fnm)
    }
    
    # load data
    spe <- SpatialExperiment::read10xVisium(
        samples = file.path(tmp, names(urls)), 
        sample_id = names(urls),
        type = "sparse", data = "filtered", 
        images = "lowres", load = TRUE)
    
    # delete temporary files
    unlink(tmp, recursive = TRUE)
    
    # save or return data
    if (save) {
        fnm <- paste0(dset, ".rda")
        save(spe, file = file.path(path, fnm))
    } else return(spe)
}
