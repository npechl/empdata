#' Biom data table
#' 
#' This a 976-sample subset of the EMP (Earth Microbiome Project) observation table containing 150bp-length sequences.
#' The samples were picked randomly and evenly across 17 habitats and then evenly across studies in each sample type.
#'
#' @source <https://earthmicrobiome.org/>
#' @format Data frame with columns
#' \describe{
#' \item{sequence}{Observation-sequence found.}
#' \item{807.W.S.12.b}{Sample name.}
#' \item{2382.RU006.C181.RH.2.383.root.9.11.lane1.NoIndex.L001.sequences}{Sample name.}
#' \item{...}{Sample names.}
#' }
#' @examples
#'   head(biom_data_150bp)
"biom_data_150bp"
