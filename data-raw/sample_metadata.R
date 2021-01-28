# Download from FTP earth microbiome project ------------------

if (!file.exists("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")) {

  utils::download.file(
    url = "ftp://ftp.microbio.me/emp/release1/otu_tables/deblur/emp_deblur_150bp.subset_2k.rare_5000.biom",
    destfile = "data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom",
    method = "curl"
  )

}

# Download sample metadata file -----------------------------

if (!file.exists("data-raw/emp_qiime_mapping_subset_2k.tsv")) {

  utils::download.file(
    url = "ftp://ftp.microbio.me/emp/release1/mapping_files/emp_qiime_mapping_subset_2k.tsv",
    destfile = "data-raw/emp_qiime_mapping_subset_2k.tsv",
    method = "curl"
  )

}

# Get sample names -----------------------------------

emp.150 = biomformat::read_biom("data-raw/emp_deblur_150bp.subset_2k.rare_5000.biom")

emp.data = biomformat::biom_data(emp.150)
emp.data = as.data.frame(base::as.matrix(emp.data))

samples = colnames(emp.data)

rm(emp.data, emp.150)

# Create sample metadata table ------------------------------------

sample_metadata = data.table::fread("data-raw/emp_qiime_mapping_subset_2k.tsv")

sample_metadata = sample_metadata[which(sample_metadata$`#SampleID` %in% samples), ]

base::save(sample_metadata, file = "data/sample_metadata.rda", compress = "xz")

# utils::write.table(sample_metadata,
#                    "data-raw/sample-metadata-150bp.txt",
#                    sep = "\t",
#                    row.names = FALSE,
#                    quote = FALSE)





