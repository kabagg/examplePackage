% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_gather_data.R
\name{use_gather_data}
\alias{use_gather_data}
\title{Sets Up 01 Gather Raw Data in Target Script Folder}
\usage{
use_gather_data(target_dir = "R")
}
\arguments{
\item{target_dir}{name of the folder where
01_gather_raw_data.R will be placed.
Defaults to "R".
Positioning is with respect to the project
root, and uses here::here.}
}
\value{
01_gather_raw_data.R should now appear
  in target_dir.
}
\description{
The first script I try to assemble in most
analysis projects is "01_gather_raw_data.R"
which uses a list of urls to download the
raw data for analysis from its canonical
location on the web.
}
\examples{
use_gather_data()
}
