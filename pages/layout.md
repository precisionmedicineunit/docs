---
layout: default
title: Layout
date: 2023-06-16 00:00:01
nav_order: 5
---

Last update: 20230531
## Data generation and control

We rely on strict data control processes. 
Once study participation is established according to the legal and ethical framework, samples are sent for data gernation.
Omic data is generated by SMOC and data is entered and controlled within SPHN DCC BioMedIT sciCORE on the MOMIC tenant. 

## Data generation
SMOC has 3 branches:
* CGAC - Genomics.
	* based in [Health2030 genome center](https://www.health2030genome.ch) Geneva.
* CPAC - Proteotyping.
	* based in [ETHZ Metabolomics & Biophysics](https://fgcz.ch/omics_areas/met.html)
* CMAC - Metabolomics & Lipidomics.
	* based in [ETHZProteomics](https://fgcz.ch/omics_areas/prot.html)

## Data control
Organisation:
* Swiss Personalised Health Network (SPHN)
	* Data Coordination Center (DCC)
	* DCC is also a part of SIB
		* data on BioMedIT network
			* our tenant is called MOMIC
			* on the sciCORE infrastructure
* omic data from SMOC http://smoc.ethz.ch/
* database structure requires [Resource Description Framework (RDF) Schema](https://www.biomedit.ch/rdf/sphn-ontology/sphn)
* training [material available here](https://sphn.ch/training/), but is a DCC responsibility
[Useful image](https://www.sib.swiss/images/sib/7-about-us/media/news_2021/Semantic-Interoperability-Framework.png), our aim it to show #3 "Use cases"
<!-- Semantic-Interoperability-Framework.png -->

## Simplified example
* For our genetic analysis dataset we might have 1000 patient_ID
* For each patient_ID we have several sequence files and a sequence metadata file
* For each patient_ID we require all available clinical data

**Genetic_sequence_data:**
```
file_name: SPH_001_R1.fq.gz
file_content: FASTQ sequence raw data
storage_location: ./project/data/
```

**Genetic_sequence_meta_data:**
```
sample_facility: SMOC
sequence_method: exome_capture
sequence_preparation: twist_humancorePlusRefSeq_hg38
sequence_technology: NovaSeq6000
demultiplexing_version: 1.1.13
order_ID: 12345
sample_reception: 20210102
sample_completion: 20210109
patient_ID: SPH_001
md5sun: 7d776c010149208c782ed7253ce70159
file_name: SPH_001_R1.fq.gz
```

**Clinical data:**
```
patient_ID: SPH_001
hospital_ID: bern_01
age_days: 100
sex: 0
admission_date: 20210101
discharge_data: 20210201
picu.adm: NA
death.date: NA
comorbities: 0
clin.focus: UTI
pathogen_found: p.aeruginosa
severity_score: 5
```

## Workflow order
**First stage order:**
1. Clinical data is used to select the patient_ID
2. The patient_ID is used to select the Genetic_sequence_data and Genetic_sequence_meta_data.
3. Genetic_sequence_meta_data is used to confirm that Genetic_sequence_data is usable.
4. Genetic_sequence_data is used as input for primary analysis pipeline.
5. Primary analysis pipeline consists of ~20 individual tasks.
6. Primary analysis pipeline tasks include multiple new data formats which are later deleted.
7. Primary analysis pipeline outputs final format for storage (e.g. VCF format).
8. Primary analysis pipeline outputs additional formats if required. Examples:
	* clinical genetics report
	* eigenval/eigenvec
	* annotation
	* cohort level statistics

**Second stage:**
1. Output from primary stage is merged with all clinical data for statistical analysis
2. Analysis include that of the genomics lab, machine learning lab.
* Example 1: genetic association studies:
	* outcome:  genotype
	* predictors: clinical consequence
	* covariates: clinical/demographic features
* Example 2: machine learning study:
	* outcome: clinical consequence
	* predictors: clinical/demographic features
	* covariates: genetics

## Examples of data re-use:
1. All original raw sequence data will be re-run incrementally as the first stage receives major pipeline updates.
2. Secondary stage will require re-using the same output from first stage many times for different projects.
3. Pertinent findings from both first stage and second stage will require follow ups. Data from both stages will be re-used.
4. Output from first stage and second stage will include summary statistics that will can be reused for QC and follow-up statistics.

## Other notes:
* Here is an example of an existing concept for [GeneticVariation](https://www.biomedit.ch/rdf/sphn-ontology/sphn#GeneticVariation)
* Note that genetic variant and location are rarely sufficient for final storage. We rely on accurate nomenclature, reference genome version, variant call quality, variant call confidence, etc.
* Note that the final output from first stage is typically [VCF format](https://gatk.broadinstitute.org/hc/en-us/articles/360035531692-VCF-Variant-Call-Format) (but will adapt to needs)
* We also typically annotate a VCF with >150 annotation databases (i.e. like one "column" per annotation per variant row)
* We also typically store as a cohort-level VCF (e.g. 1000 samples) rather than one VCF per sample

