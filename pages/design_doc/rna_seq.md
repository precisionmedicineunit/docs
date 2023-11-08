## RNA seq
Recommendation from 
Dr. sc. nat. Adhideb Ghosh
ETH Zürich, Functional Genomics Center Zürich, Switzerland

* nextflow RNAseq pipeline
    * adapted the workflow from Babraham institute (https://github.com/s-andrews/nextflow_pipelines/blob/master/nf_rnaseq) by also including the quantification step using featureCounts.

* STAR alignment of Kallisto pseudo-alignment
    * directly on command line.

* edgeR/DeSeq2 pipelines for performing differential gene expression analysis 
    * flexibility to check for outliers or confounders.

* Concise overview of different RNAseq normalization <https://hbctraining.github.io/DGE_workshop/lessons/02_DGE_count_normalization.html>

