---
layout: default
title: Reference genome
date: 2023-07-27 00:00:01
nav_order: 5
---

Last update: 20230727

Reference genome choice is discussed succinctly in many difference places.
Therefore, I will not write a long piece on it but instead add links for what I think are usefule sources.

## Heng Li - Which human reference genome to use?
<https://lh3.github.io/2017/11/13/which-human-reference-genome-to-use>

## Illumina review
<https://www.illumina.com/science/genomics-research/articles/dragen-demystifying-reference-genomes.html>


## Reference preperation
Once we have
We map reads to GRCh38 or hg38 using the following:

```
ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.15_GRCh38/seqs_for_alignment_pipelines.ucsc_ids/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz
```

Once downloaded we need the index which is done by
` bwa index GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz`
