# Download from FTP earth microbiome project ------------------

if (!file.exists("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "ftp://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_150bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}

# Create observation table --------------------------------

emp.150 = biomformat::read_biom("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")

observation_metadata_150bp = biomformat::observation_metadata(emp.150)

observation_metadata_150bp$sequence = base::row.names(observation_metadata_150bp)

observation_metadata_150bp = observation_metadata_150bp[,c(8, 1:7)]

base::row.names(observation_metadata_150bp) = base::as.character(1:base::nrow(observation_metadata_150bp))

base::save(observation_metadata_150bp, file = "data/observation_metadata_150bp.rda", compress = "xz")

# utils::write.table(observation_metadata_150bp,
#                    "data-raw/observation-taxonomy-150bp.txt",
#                    sep = "\t",
#                    row.names = FALSE,
#                    quote = FALSE)



