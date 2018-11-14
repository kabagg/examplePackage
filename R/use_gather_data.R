#' Sets Up 01 Gather Raw Data in Target Script Folder
#'
#' The first script I try to assemble in most
#' analysis projects is "01_gather_raw_data.R"
#' which uses a list of urls to download the
#' raw data for analysis from its canonical
#' location on the web.
#'
#' @param target_dir name of the folder where
#'   01_gather_raw_data.R will be placed.
#'   Defaults to "R".
#'   Positioning is with respect to the project
#'   root, and uses here::here.
#' @return 01_gather_raw_data.R should now appear
#'   in target_dir.
#' @examples
#' use_gather_data()
#' @importFrom here here
#' @export
use_gather_data <- function(target_dir = "R"){

  if (!dir.exists(here::here(target_dir))) {
    cat("creating ", target_dir, "/ directory\n")
    dir.create(here::here(target_dir))
  }

  copy_successful <-
    file.copy(
      from =
        system.file(
          file.path(
            "templates",
            "R_Scripts",
            "01_gather_raw_data.R"),
          package = "examplePackage"),
      to = here::here(target_dir))

  if(copy_successful){
    cat("01_gather_raw_data.R created in", target_dir, "\n")
  }else{
    cat("WHOOPS. 01_gather_raw_data.R NOT created in",
        target_dir, "\n")
  }

}
