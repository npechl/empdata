# Download from FTP earth microbiome project ------------------

if (!file.exists("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "ftp://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_150bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}

# Create OTU table -----------------------------------

emp.150 = biomformat::read_biom("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")

biom_data_150bp = biomformat::biom_data(emp.150)
biom_data_150bp = as.data.frame(base::as.matrix(biom_data_150bp))

biom_data_150bp$sequence = row.names(biom_data_150bp)

biom_data_150bp = biom_data_150bp[,c(ncol(biom_data_150bp), 1:(ncol(biom_data_150bp) - 1))]

base::row.names(biom_data_150bp) = base::as.character(1:base::nrow(biom_data_150bp))

base::save(biom_data_150bp, file = "data/biom_data_150bp.rda", compress = "bzip2")

# utils::write.table(biom_data_150bp,
#                    "data-raw/otu-table-150bp.txt",
#                    sep = "\t",
#                    row.names = FALSE,
#                    quote = FALSE)


