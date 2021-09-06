#' Observation taxonomy table
#'
#' This a 975-sample subset of the EMP (Earth Microbiome Project) taxonomy table containing 150bp-length sequences.
#' The samples were picked randomly and evenly across 17 habitats and then evenly across studies in each sample type.
#'
#' @source <https://earthmicrobiome.org/>
#' @format Data frame with columns
#' \describe{
#' \item{sequence}{Observation-sequence found.}
#' \item{taxonomy1}{First taxonomic rank.}
#' \item{taxonomy2}{Second taxonomic rank.}
#' \item{taxonomy3}{Third taxonomic rank.}
#' \item{taxonomy4}{Fourth taxonomic rank.}
#' \item{taxonomy5}{Fifth taxonomic rank.}
#' \item{taxonomy6}{Sixth taxonomic rank.}
#' \item{taxonomy7}{Seventh taxonomic rank.}
#' }
#' @examples
#'   str(observation_metadata_sub2k150)
"observation_metadata_sub2k150"
