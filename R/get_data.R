

#' Get sequences as a SeqFastadna object
#'
#' @param emp.obj a dgCMatrix object containing otu-observation table
#' @param file.out Fasta file name to write
#' @param print.out Should a fasta file be printed instead ??
#'
#' @importFrom seqinr write.fasta
#'
#' @return
#' @export
#'
#' @examples
#'

get_sequences <- function(emp.obj,
                          file.out = "emp_data.fasta",
                          print.out = FALSE) {

  if(class(emp.obj) == "character") {

    emp.obj = switch(emp.obj,

                     "emp.data.2k150bp" = emp.data.2k150bp,
                     "emp.data.2k100bp" = emp.data.2k100bp,
                     "emp.data.2k90bp" = emp.data.2k90bp)

  } else if(class(emp.obj) != "dgCMatrix") {

      stop(c("Please provide a sparse matrix of class dgCMatrix. \n\n",
             "A list of the provided datasets can be found by calling 'list_otu_tables()'."))

  }

  if(is.null(emp.obj)) {

    stop(c("Please provide a sparse matrix of class dgCMatrix. \n\n",
           "A list of the provided datasets can be found by calling 'list_otu_tables()'."))

  }


  sequences = row.names(emp.obj)

  seq.ids = paste0("emp_seq", 1:length(sequences))

  if(print.out) {

    write.fasta(sequences = as.list(sequences),
                names = as.list(seq.ids),
                file.out = file.out,
                nbchar = 60)

    # return()

  } else {

    sequences = lapply(sequences, s2c)

    names(sequences) = seq.ids

    sequences = lapply(sequences, as.SeqFastadna)

    return(sequences)

  }


}

