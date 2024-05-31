---
layout: default
title: GATK Genomic db import
parent: DNA germline short variant discovery
grand_parent: Design documents
nav_order: 4
---

## Genomics Database Import

### Overview
The Genomics Database Import step is crucial for compiling variant data from multiple samples into a unified database, enhancing the efficiency of downstream variant analysis processes such as joint genotyping.

### Implementation
The script `08_genomics_db_import.sh` is designed to handle the consolidation of genomic variant call files (gVCFs) into a GenomicsDB workspace using GATK's `GenomicsDBImport` tool. This script is configured to process the data using SLURM job arrays, enabling parallel processing of genomic data.

#### Script Description
The script is optimized for high-throughput computational requirements:

- **Nodes**: 1
- **Memory**: 30G
- **CPUs per Task**: 2
- **Time Limit**: 72:00:00
- **Job Name**: genomics_db_import
- **Job Array**: Supports handling 25 chromosome sets in a batch processing manner.

The script begins by establishing the environment, sourcing necessary variables, and setting up directories for input and output data.

#### Tools Used
- **GATK (v4.4.0.0)**: Used for its `GenomicsDBImport` tool, which allows for the efficient aggregation of gVCF files into a single database that can be queried and analyzed more efficiently.

#### Process Flow
1. **Input Preparation**:
   - Identifies all gVCF files from the Haplotype Calling step.
   - Constructs a command to include all these files in the GenomicsDB workspace.

2. **Database Creation**:
   - For each chromosome or chromosome set specified by the job array, a separate GenomicsDB workspace is created.
   - The process is customized to include optimizations for shared POSIX filesystems, which improves performance on distributed computing systems.

3. **Execution Details**:
   - The script uses dynamic allocation of memory and CPU resources to handle the intense demands of processing large genomic datasets.
   - Outputs include a GenomicsDB workspace for each chromosome, facilitating rapid access and manipulation in subsequent analytical steps.

### Quality Assurance
Robust logging, detailed output management, and stringent error handling are implemented to ensure the reliability and reproducibility of the Genomics Database Import process.

### Conclusion
The consolidation of gVCF files into a GenomicsDB workspace is a pivotal step in our pipeline. It not only optimizes the storage and querying of genomic data but also sets the stage for efficient joint genotyping and variant analysis across multiple samples. This process leverages advanced computational tools and techniques to handle the complexities of large-scale genomic datasets effectively.

---

