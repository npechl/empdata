
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

biom_sub2k_150bp = biomformat::biom_data(emp.2k.150)
observation_metadata_sub2k150 = biomformat::observation_metadata(emp.2k.150)

base::save(biom_sub2k_150bp, file = "data/biom_sub2k_150bp.rda", compress = "bzip2")
base::save(observation_metadata_sub2k150, file = "data/observation_metadata_sub2k150.rda", compress = "bzip2")

