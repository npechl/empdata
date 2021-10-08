
#' Title
#'
#' @return
#' @export
#'
#' @examples
#'

list_datasets <- function() {

    message(c("emp.data.2k90bp:\t", "a dgCMatrix object containing 90-bp microbial sequences and their corresponding score values across 2,000 samples"))
    message(c("emp.data.2k100bp:\t", "a dgCMatrix object containing 100-bp microbial sequences and their corresponding score values across 1,856 samples"))
    message(c("emp.data.2k150bp:\t", "a dgCMatrix object containing 150-bp microbial sequences and their corresponding score values across 975 samples"))


    message(c("obs.metadata.2k90bp:\t", "a data.table object containing 90-bp microbial sequences and their corresponding taxonomy"))
    message(c("obs.metadata.2k100bp:\t", "a data.table object containing 100-bp microbial sequences and their corresponding taxonomy"))
    message(c("obs.metadata.2k150bp:\t", "a data.table object containing 150-bp microbial sequences and their corresponding taxonomy"))

    message(c("sample.metadata.sub2k:\t", "a data.table class containing sample metadata of 2,000 samples"))

}


#' Title
#'
#' @return
#' @export
#'
#' @examples


list_otu_tables <- function() {

    message(c("emp.data.2k90bp:\t", "a dgCMatrix object containing 90-bp microbial sequences and their corresponding score values across 2,000 samples"))
    message(c("emp.data.2k100bp:\t", "a dgCMatrix object containing 100-bp microbial sequences and their corresponding score values across 1,856 samples"))
    message(c("emp.data.2k150bp:\t", "a dgCMatrix object containing 150-bp microbial sequences and their corresponding score values across 975 samples"))

}

#' Title
#'
#' @return
#' @export
#'
#' @examples

list_taxonomy_tables <- function() {

    message(c("obs.metadata.2k90bp:\t", "a data.table object containing 90-bp microbial sequences and their corresponding taxonomy"))
    message(c("obs.metadata.2k100bp:\t", "a data.table object containing 100-bp microbial sequences and their corresponding taxonomy"))
    message(c("obs.metadata.2k150bp:\t", "a data.table object containing 150-bp microbial sequences and their corresponding taxonomy"))

}



