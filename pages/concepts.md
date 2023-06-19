---
layout: default
title: Data concepts
date: 2023-06-16 00:00:01
nav_order: 5
---

Last update: 20230619

## How data is collected and stored
* The Swiss Personalised Health Network (SPHN): collects and hosts omic data that we will ultimately use
* Branch of SPHN: [Data Coordination Center (DCC)](https://sphn.ch/network/data-coordination-center/)
* DCC is also a part of [Swiss Institute of Bioinformatics (SIB)](https://www.sib.swiss/personalized-health-informatics)
* The data is to be stored and processed on [BioMedIT network](https://www.biomedit.ch)
* Our tenant on BioMedIT is called MOMIC and this is on the [sciCORE infrastructure](https://scicore.ch).
* The database structure requires Resource Description Framework [(RDF) Schema](https://www.biomedit.ch/rdf/sphn-ontology/sphn)

## Database concepts
The DCC is responsible for making research data suitable for database management. 
To do this they design the concepts.
Training [material available here](https://sphn.ch/training/), but is a DCC responsibility.

Several concepts for the types of data that we use alredy exist.
e.g. genetic data concepts.

We also assist in generating new omics-related concepts for future expansion. 
This page will be updated to summarise the progress as these new concepts are defined. 

<img title="Illustration Semantic-Interoperability-Framework" alt="Alt text" src="https://www.sib.swiss/images/sib/7-about-us/media/news_2021/Semantic-Interoperability-Framework.png">

## Availability 
The following information is copied from <https://sphn.ch/2023/03/20/sphn-dataset-rdf-schema-2023-release/>

* The SPHN Dataset is openly available here: <https://sphn.ch/document/sphn-dataset/>
* The SPHN RDF Schema is browsable here: <https://www.biomedit.ch/rdf/sphn-ontology/sphn/2023/2>
* The external terminologies in RDF are accessible on BioMedIT Portal: <https://portal.dcc.sib.swiss/>
* The Quality Assurance Framework is available here: <https://git.dcc.sib.swiss/sphn-semantic-framework/sphn-ontology/-/tree/master/quality_assurance>
* Project templates are available here: <https://git.dcc.sib.swiss/sphn-semantic-framework/sphn-ontology/-/tree/master/templates>
* A comprehensive documentation is openly accessible here: <https://sphn-semantic-framework.readthedocs.io/en/latest/>

## Specific genetic examples
* <https://www.biomedit.ch/rdf/sphn-ontology/sphn/2023/2#GeneticVariation>
* <https://www.biomedit.ch/rdf/sphn-ontology/sphn/2023/2#SingleNucleotideVariation>
* <https://www.biomedit.ch/rdf/sphn-ontology/sphn/2023/2#VariantDescriptor>
* <https://www.biomedit.ch/rdf/sphn-ontology/sphn/2023/2#VariantNotation>


## Potential concepts
 <hr/>
<img src="{{ "assets/images/concept_ideas_1.png" | relative_url }}" width="100%">
 <hr/>
<img src="{{ "assets/images/concept_ideas_2.png" | relative_url }}" width="100%">
 <hr/>
<img src="{{ "assets/images/concept_ideas_3.png" | relative_url }}" width="100%">
 <hr/>
<img src="{{ "assets/images/concept_ideas_4.png" | relative_url }}" width="100%">
