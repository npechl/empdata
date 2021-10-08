
# Download sample metadata file -----------------------------

if (!file.exists("data-raw/emp_qiime_mapping_subset_2k.tsv")) {

  utils::download.file(
    url = "http://ftp.microbio.me/emp/release1/mapping_files/emp_qiime_mapping_subset_2k.tsv",
    destfile = "data-raw/emp_qiime_mapping_subset_2k.tsv",
    method = "curl"
  )

}

# if (!file.exists("data-raw/emp_qiime_mapping_subset_5k.tsv")) {
#
#   utils::download.file(
#     url = "ftp://ftp.microbio.me/emp/release1/mapping_files/emp_qiime_mapping_subset_5k.tsv",
#     destfile = "data-raw/emp_qiime_mapping_subset_5k.tsv",
#     method = "curl"
#   )
#
# }
#
# if (!file.exists("data-raw/emp_qiime_mapping_subset_1k.tsv")) {
#
#   utils::download.file(
#     url = "ftp://ftp.microbio.me/emp/release1/mapping_files/emp_qiime_mapping_subset_10k.tsv",
#     destfile = "data-raw/emp_qiime_mapping_subset_10k.tsv",
#     method = "curl"
#   )
#
# }


# Create sample metadata table ------------------------------------

sample.metadata.sub2k = data.table::fread("data-raw/emp_qiime_mapping_subset_2k.tsv")

sample.metadata.sub2k$title = stringr::str_replace(sample.metadata.sub2k$title,
                                                   "assemblagesÂ",
                                                   "assemblages")

usethis::use_data(sample.metadata.sub2k)

# utils::write.table(sample_metadata,
#                    "data-raw/sample-metadata-150bp.txt",
#                    sep = "\t",
#                    row.names = FALSE,
#                    quote = FALSE)





