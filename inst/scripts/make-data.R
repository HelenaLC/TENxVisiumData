# version number needs to be changed 
# in inst/scripts/make_(meta)data.R;
# to make all data, run:
# pkg <- "~/packages/TENxVisiumData"
# dir <- paste0(pkg, "/data/3.13")
# source(paste0(pkg, "/inst/scripts/make-data.R"))
# suppressPackageStartupMessages(
#     library(SpatialExperiment))
# scripts <- list.files(
#     paste0(pkg, "/inst/scripts"),
#     "make-data_", full.names = TRUE)
# for (s in scripts) {
#     pat <- ".*_(.*)\\.R"
#     txt <- gsub(pat, "\\1", s)
#     print(txt)
#     source(s) }

.make_data <- function(dset, urls, save = TRUE, path = dir)
{
    # create subdirectory specific
    # to current version number (vn)
    if (!dir.exists(path)) 
        dir.create(path)
    
    # skip, if file already exists
    out <- paste0(dset, ".rda")
    out <- file.path(path, out)
    if (file.exists(out)) 
        return(NULL)
    
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
    for (smpl in names(urls)) {
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
    spe <- read10xVisium(
        samples = file.path(tmp, names(urls)), 
        sample_id = names(urls),
        type = "sparse", data = "filtered", 
        images = "lowres", load = TRUE)
    
    # delete temporary files
    unlink(tmp, recursive = TRUE)
    
    # save or return data
    if (save) {
        save(spe, file = out)
    } else return(spe)
}