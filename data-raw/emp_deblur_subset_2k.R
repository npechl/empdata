


# load libraries ----------------------------------------------------

library(data.table)
library(biomformat)
library(Matrix)


# Download from FTP Earth Microbiome Project ------------------

if (!file.exists("data-raw/emp_deblur_90bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "http://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_90bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_90bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}

if (!file.exists("data-raw/emp_deblur_100bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "http://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_100bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_100bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}

if (!file.exists("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "http://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_150bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}



# Create OTU table; subset 2k - 150bp -------------------------------------------------------------

emp.2k.150 = biomformat::read_biom("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")

obs.metadata.2k150bp = observation_metadata(emp.2k.150)
obs.metadata.2k150bp$`#sequence` = row.names(obs.metadata.2k150bp)
obs.metadata.2k150bp = as.data.table(obs.metadata.2k150bp)

usethis::use_data(obs.metadata.2k150bp)

rm(obs.metadata.2k150bp)
gc()

tmp = lapply(seq(1:length(emp.2k.150$data)), function(x) {

  out = emp.2k.150$data[[x]]

  out = data.table(i = x,
                   j = which(out != 0),
                   x = out[which(out != 0)])


  return(out)

})

tmp = rbindlist(tmp)

sequences = biomformat::rownames(emp.2k.150)
samples = biomformat::colnames(emp.2k.150)

rm(emp.2k.150)


emp.data.2k150bp = sparseMatrix(i = tmp$i,
                                j = tmp$j,
                                x = tmp$x,
                                dims = c(length(unique(tmp$i)),
                                         length(unique(tmp$j))))

dimnames(emp.data.2k150bp) = list(sequences, samples)

rm(sequences, samples, tmp)
gc()

usethis::use_data(emp.data.2k150bp)

rm(emp.data.2k150bp)
gc()




# Create OTU table; subset 2k - 100bp -------------------------------------------------------------

emp.2k.100 = biomformat::read_biom("data-raw/emp_deblur_100bp.subset_2k.rare_5000.biom")

obs.metadata.2k100bp = observation_metadata(emp.2k.100)
obs.metadata.2k100bp$`#sequence` = row.names(obs.metadata.2k100bp)
obs.metadata.2k100bp = as.data.table(obs.metadata.2k100bp)

usethis::use_data(obs.metadata.2k100bp)

rm(obs.metadata.2k100bp)
gc()

tmp = lapply(seq(1:length(emp.2k.100$data)), function(x) {

  out = emp.2k.100$data[[x]]

  out = data.table(i = x,
                   j = which(out != 0),
                   x = out[which(out != 0)])


  return(out)

})

tmp = rbindlist(tmp)

sequences = biomformat::rownames(emp.2k.100)
samples = biomformat::colnames(emp.2k.100)

rm(emp.2k.100)


emp.data.2k100bp = sparseMatrix(i = tmp$i,
                                j = tmp$j,
                                x = tmp$x,
                                dims = c(length(unique(tmp$i)),
                                         length(unique(tmp$j))))

dimnames(emp.data.2k100bp) = list(sequences, samples)

rm(sequences, samples, tmp)
gc()

usethis::use_data(emp.data.2k100bp)

rm(emp.data.2k100bp)
gc()


# Create OTU table; subset 2k - 90bp -------------------------------------------------------------

emp.2k.90 = biomformat::read_biom("data-raw/emp_deblur_90bp.subset_2k.rare_5000.biom")

obs.metadata.2k90bp = observation_metadata(emp.2k.90)
obs.metadata.2k90bp$`#sequence` = row.names(obs.metadata.2k90bp)
obs.metadata.2k90bp = as.data.table(obs.metadata.2k90bp)

usethis::use_data(obs.metadata.2k90bp)

rm(obs.metadata.2k90bp)
gc()

tmp = lapply(seq(1:length(emp.2k.90$data)), function(x) {

  out = emp.2k.90$data[[x]]

  out = data.table(i = x,
                   j = which(out != 0),
                   x = out[which(out != 0)])


  return(out)

})

tmp = rbindlist(tmp)

sequences = biomformat::rownames(emp.2k.90)
samples = biomformat::colnames(emp.2k.90)

rm(emp.2k.90)


emp.data.2k90bp = sparseMatrix(i = tmp$i,
                                j = tmp$j,
                                x = tmp$x,
                                dims = c(length(unique(tmp$i)),
                                         length(unique(tmp$j))))

dimnames(emp.data.2k90bp) = list(sequences, samples)

rm(sequences, samples, tmp)
gc()

usethis::use_data(emp.data.2k90bp)

rm(emp.data.2k90bp)
gc()



