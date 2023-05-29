# Variables

For each script, shared variables will be sourced from the variables file.

Each pipeline can have its own variables file which will be sourced in its entirety or selectively.

The variables file contains entries such as:
```
DATABASE="./sph/database/"
REF_GRCh38="${DATABASE}/ref/grch38/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz"
```

Which will assign the locations for all shared datasets, tools, etc.

```
+-- ..
|-- (sph)
|
|-- database
|   |-- ref
|   |   |-- grch37
|   |   |-- grch38
|   |   +-- ..
|   |
|   |-- vep
|   |   |-- ..
|   |   |-- ..
|   |   +-- ..
|   |
|   |-- gnomad
|   |   |-- ..
|   |   |-- ..
|   |   +-- ..
|   |
|   |-- (other files, pages with no children)
|   +-- ..
|
|-- tools
|   |-- gatk
|   |
|   |-- vep
|   |   |-- ..
|   |   +-- ..
|   |
|   |-- vt
|   |
|   +-- ..
|
|-- (sph)
+-- ..
```

For all new permanent datasets, tools, etc. we add it to the index table.
