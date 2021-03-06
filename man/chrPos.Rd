% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{chrPos}
\alias{chrPos}
\title{Position information for SNPs}
\format{A data frame with 29,124 rows and 3 variables:
\describe{
  \item{name}{Name of SNPs, Some have suffix "_B", which indicates that one SNP name has two idat IDs.}
  \item{chromosome}{Character with chromosome ID (e.g. "chrA01")}
  \item{position}{Integer with position in chromosome.}
}}
\usage{
chrPos
}
\description{
A table of chromosome and position for (almost) all SNP on the Brassica60K chip.
}
\references{
http://www.sciencedirect.com/science/article/pii/S2352340915000062
}
\keyword{datasets}

