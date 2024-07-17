---
layout: default
title: Benchmarking pipeline output
date: 2023-07-17 00:00:01
nav_order: 5
---

Last update: 20240717
# Benchmarking pipeline output

We are using [https://github.com/Illumina/hap.py](https://github.com/Illumina/hap.py) haplotype VCF comparison tools.
The steps include setting up the environment on an HPC system, preparing the reference genome, and executing the comparison.

## Steps

### 0. **Download hap.py Repository**
The hap.py tool was obtained from its [GitHub repository](https://github.com/Illumina/hap.py) and transferred to the HPC system for installation.

### 1. **Install hap.py with Python 2**
Due to specific compatibility requirements, hap.py is installed using Python 2. This installation includes transferring the necessary files to the HPC via SFTP.

### 2. **Prepare the Reference Genome**
The tool requires a reference genome unzipped and in a single file.
We adjust our reference genome accordingly, ensuring it's compatible with hap.py's expectations.

### 3. **Index the Reference Genome**
Indexing is required for the modified reference genome. 
This is accomplished by indexing with
`samtools faidx GCA_000001405.15_GRCh38_no_alt_analysis_set.fa`.

### 4. **Execute hap.py**
With the reference genome ready, the hap.py tool is used to perform a comparative analysis between two VCF files. This process involves configuring the tool with the paths to the input files, output directory, and the reference genome.


