# empdata

This package contains information about sequences, taxonomy metadata, and sample metadata that originated from The Earth Microbiome Project.

This package provides the following data tables.

* `biom_data_150bp`: observation-sequence counts per sample
* `observation_metadata_150bp`: observation-sequence taxonomy
* `sample_metadata`: sample metadata


## Installation 

```
devtools::install_github("nikopech/empdata")
```

## Quick start

```
library(empdata)

str(biom_data_150bp)

str(observation_metadata_150bp)

str(sample_metadata)
```