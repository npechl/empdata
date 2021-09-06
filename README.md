# empdata

This is a 975-sample subset of the EMP ([Earth Microbiome Project](https://www.earthmicrobiome.org/)) dataset containing 150bp-length sequences. 
All samples were picked randomly and evenly across 17 habitats and then evenly across 97 studies in each sample type.

This package provides the following data frames:

* `biom_data_150bp`: observation-sequence counts per sample
* `observation_metadata_150bp`: observation-sequence taxonomy
* `sample_metadata`: sample metadata


## Installation 

```R
# install.packages("devtools")
devtools::install_github("nikopech/empdata")
```

## Quick start

```R
library(empdata)

str(biom_data_150bp)
# str(observation_metadata_150bp)
# str(sample_metadata)
```

## License

All data sets were collected from the [FTP site](ftp://ftp.microbio.me/emp/release1) of the [Earth Microbiome Project](https://www.earthmicrobiome.org/).

Sample processing, sequencing, and core amplicon data analysis were performed by the Earth Microbiome Project (www.earthmicrobiome.org), and all amplicon sequence data and metadata have been made public through the EMP data portal (qiita.microbio.me/emp).

Please cite the following publication if you use any of them:

*Thompson, L., Sanders, J., McDonald, D. et al.* 
*A communal catalogue reveals Earth’s multiscale microbial diversity.*
*Nature 551, 457–463 (2017). https://doi.org/10.1038/nature24621*

Please see the [LICENSE](LICENSE) file for details
