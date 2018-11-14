#' ---
#' title: Gathering Raw Data
#' author: Keith Baggerly
#' date: "`r Sys.Date()`"
#' output: github_document
#' ---

#' Here we're assembling the raw data from the
#' datasets we want to use from various repositories
#' on the web, and collecting them in data/.

library(here)
library(downloader)

#' Set up the data directory if it doesn't exist

if (!dir.exists(here("data"))) {
  cat("creating data/ directory\n")
  dir.create(here("data"))
}

#'
#' Loop through all urls and files provided, and acquire
#' files we don't have yet
#'

#' Example use:
#'
#' potti_url <-
#'   "https://ndownloader.figshare.com/files/10615624?private_link=66603862d770b4c73146"
#' potti_data_file <-
#'   "chemo.zip"
#' url_list <- c(potti_url)
#' data_file_list <- c(potti_data_file)

url_list <-
  c()

data_file_list <-
  c()

if(length(data_file_list) > 0){
  for(i1 in 1:length(data_file_list)){

    if(!file.exists(here::here("data", data_file_list[i1]))){
      cat("downloading ", data_file_list[i1], "\n")

      download(url_list[i1],
               destfile = here::here("data", data_file_list[i1]),
               mode = "wb")
    }
  }
}
