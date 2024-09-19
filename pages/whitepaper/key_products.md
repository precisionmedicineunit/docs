---
layout: default
title: key_products
nav_order: 5
---

Last update: 20240919

Key products
============

Products of the precision medicine unit include for variant
classification and interpretation, for defining the posterior
probability of every genetic determinant of disease based on all known
public data, for statistical interpretation of variant set association
testing (VSAT), for automated statistical genomics, for multi-omic joint
analysis of VSAT by aggregated Cauchy association test (ACAT), for DNA
pre-processing for RNA pre-processing, and the documentation of
pipelines in .

Product example: advanced DNA sequencing data preprocessing
-----------------------------------------------------------

represents a vital product from our precision medicine unit,
meticulously designed to preprocess WGS DNA data for use in clinical
genetics reporting, statistical analysis, and machine learning
applications. Employing the Genome Analysis Toolkit (GATK), standardises
the preparation of DNA sequencing data to ensure consistency and
reliability across diverse analytical applications.

is engineered around the GATK best practices for DNA sequence data
preprocessing. This workflow is integral to producing high-quality,
clinical-grade DNA data outputs, which are crucial for downstream
processes like variant interpretation in ACMGuru and assessing genetic
determinants of disease with deepInfeR.

The workflow is detailed and robust, encompassing several critical
stages of DNA preprocessing:

1.  **Quality Control and Pre-processing**: Initial receipt of raw FASTQ
    files followed by quality control assessments using tools like
    FastQC and subsequent trimming with Trimmomatic.

2.  **Alignment**: Alignment of sequences to the GRCh38 reference genome
    using the Burrows-Wheeler Aligner (BWA).

3.  **Post-alignment Optimization**: Includes marking duplicates with
    Picard Tools, and base quality score recalibration (BQSR) with
    GATK's BaseRecalibrator and ApplyBQSR tools.

4.  **Variant Calling**: Utilizing GATK's HaplotypeCaller for calling
    germline SNPs and indels, followed by variant quality score
    recalibration (VQSR) to ensure high-quality variant calls.

5.  **Output Generation**: Production of annotated, processed BAM and
    VCF files ready for comprehensive genetic analysis.

Processed outputs from DNAsnake feed directly into:

-   , for detailed variant classification and interpretation in line
    with ACMG guidelines.

-   , which utilizes the processed data to calculate the posterior
    probabilities of genetic variants, influencing disease phenotypes
    based on extensive public data repositories.

By automating the WGS DNA data preprocessing with , our unit will
achieve:

-   **Standardisation and reproducibility**: Ensures that all samples
    are processed through a uniform pipeline, reducing variability and
    enhancing the reliability of results.

-   **Efficiency and scalability**: Capable of handling large-scale
    datasets with the flexibility to accommodate increasing data volumes
    without sacrificing performance.

-   **Integration and Interoperability**: Seamlessly interfaces with
    other analytical tools and databases, promoting a cohesive and
    integrated approach to precision medicine.

exemplifies our commitment to delivering state-of-the-art solutions for
genetic data preprocessing. As an element of our single-source
management strategy, it not only supports but enhances the capabilities
of our precision medicine initiatives, ensuring that data used across
various platforms is of the highest quality and utility.
