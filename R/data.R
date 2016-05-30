#' Example data for gsrc
#'
#' Brassica napus data to use in the vignette of __gsrc__.
#' This package provides raw idat files for two samples,
#' a raw data object with 140 samples,
#' position information for the Brassica60K chip,
#' a SNP name dictionary for the Brassica60K chip and
#' synteny blocks for the Brassica napus.
#'
#' Use \code{data(raw_napus)} to load the dataset and explore the options of __gsrc__.
#' The raw idat files together with the sample sheets are in /extdata.
#' Get the full path with \code{list.files(system.file("extdata"), full.names = TRUE,
#' pattern = "idat")}
#'
"_PACKAGE"

#' Raw data
#'
#' Raw data object.
#'
#' @docType data
#' @format A raw data object, consisting of seven elements
#' \describe{
#'   \item{chr}{Chromosome name for each SNP}
#'   \item{pos}{Position for each SNP}
#'   \item{snps}{Name of SNPs, Some have suffix "_B", which indicates that one SNP name has two idat IDs.}
#'   \item{beads}{Empty element. Bead information can be stored here.}
#'   \item{sd}{Empty element. Standard deviation information can be stored here.}
#'   \item{samples}{Sample names. Two names per sample, suffixed with _Grn and _Red.}
#'   \item{raw}{Matrix containing the raw data values for each input file.}
#' }
#'
"raw_napus"

#' Position information for SNPs
#'
#' A table of chromosome and position for (almost) all SNP on the Brassica60K chip.
#'
#' @references http://www.sciencedirect.com/science/article/pii/S2352340915000062
#' @docType data
#' @format A data frame with 29,124 rows and 3 variables:
#' \describe{
#'   \item{name}{Name of SNPs, Some have suffix "_B", which indicates that one SNP name has two idat IDs.}
#'   \item{chromosome}{Character with chromosome ID (e.g. "chrA01")}
#'   \item{position}{Integer with position in chromosome.}
#' }
"chrPos"

#' Dictionary between idat IDs and SNP names
#'
#' A table to translate the idat IDs into SNP names.
#'
#' @docType data
#' @format A data frame with 53,370 rows and 2 variables:
#' \describe{
#'   \item{idatID}{8 digit Integer as used in idat file}
#'   \item{name}{Name of SNPs, Some have suffix "_B", which indicates that one SNP name has two idat IDs.}
#' }
"dictionary"

#' Synteny blocks
#'
#' We extracted the collinearity information from
#' \url{http://www.sciencedirect.com/science/article/pii/S2352340915000062}.
#' We filtered out small fragments and only maintained the most prominent synteny blocks.
#' These blocks support the visual analysis of the data.
#' For more details see the vignette on synteny blocks in the gsrc package.
#'
#' @docType data
#' @format A data frame with 53370 rows and 10 variables:
#' \describe{
#'   \item{name}{Name of SNPs, Some have suffix "_B", which indicates that one SNP name has two idat IDs.}
#'   ...
#' }
#' @source \url{http://www.sciencedirect.com/science/article/pii/S2352340915000062}
"synteny_blocks"
