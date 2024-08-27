---
layout: default
title: ACMG criteria
nav_order: 5
---

Last update: 20220131

{: .no_toc }
<details open markdown="block">
<summary>Table of contents</summary>
{: .text-delta }
- TOC
{:toc}
</details>

---

# Interpretation of variants by ACMG standards and guidelines

Extensive annotation is applied during our genomics analysis.
Interpretation of genetic determinants of disease is based on many evidence sources.
One important source of interpretation comes from the
_Standards and guidelines for the interpretation of sequence variants: a joint consensus recommendation of the American College of Medical Genetics and Genomics and the Association for Molecular Pathology_, Richards et al.
[^richards2015standards].
See also Li et al., 2017 [^li2017standards] and Riggs et al., 2020 [^riggs2020technical].
The following tables are provided as they appear in the initial steps of our filtering protocol for the addition of ACMG-standardised labels to candidate causal variants.

For reference, alternative public implementations of ACMG guidelines can be found in 
Li et al., 2017
[^li2017intervar] and
Xavier et al., 2019
[^xavier2019tapes];
please note these tools have not implemented here nor is any assertion of their quality offered.
Examples of effective variant filtering and expected candidate variant yield in studies of rare human disease are provided by
Pedersen et al., 2021
[^pedersen2021effective].

## Criteria for classifications

{% include acgm_criteria_table.txt %}

## Caveats implementing filters
Implementing the guidelines for interpretation of annotation requires multiple programmatic steps. 
The number of individual caveat checks indicate the number of bioinformatic filter functions used.
Unnumbered caveat checks indicate that only a single filter function is required during reference to annotation databases.
However, each function depends on reference to either one or several evidence source databases (approximately 150 sources) which are not shown here. 

{% include acgm_criteria_table_caveats.txt %}

## References

[^richards2015standards]: Richards, S. et al., 2015. Standards and guidelines for the interpretation of sequence variants: a joint consensus recommendation of the American College of Medical Genetics and Genomics and the Association for Molecular Pathology. _Genetics in Medicine_, 17(5), pp.405–423. DOI: [10.1038/gim2015.30](https://www.gimjournal.org/article/S1098-3600(21)03031-8/fulltext).

[^li2017standards]: Li, M.M. et al., 2017. Standards and guidelines for the interpretation and reporting of sequence variants in cancer: a joint consensus recommendation of the Association for Molecular Pathology, American Society of Clinical Oncology, and College of American Pathologists. _The Journal of Molecular Diagnostics_, 19(1), pp.4–23. DOI: [10.1016/j.jmoldx.2016.10.002](https://doi.org/10.1016/j.jmoldx.2016.10.002).

[^riggs2020technical]: Riggs, E.R. et al., 2020. Technical standards for the interpretation and reporting of constitutional copy-number variants: a joint consensus recommendation of the American College of Medical Genetics and Genomics (ACMGe and the Clinical Genome Resource (ClinGen). _Genetics in Medicine_, 22(2), pp.245–257. DOI: [10.1038/s41436-019-0686-8](https://doi.org/10.1038/s41436-019-0686-8).

[^pedersen2021effective]: Pedersen, B.S. et al., 2021. Effective variant filtering and expected candidate variant yield in studies of rare human disease. _NPJ Genomic Medicine_, 6(1), pp.1–8. DOI: [10.1038/s41525-021-00227-3](https://doi.org/10.1038/s41525-021-00227-3).

[^li2017intervar]: Li, Q. and Wang, K., 2017. InterVar: clinical interpretation of genetic variants by the 2015 ACMG-AMP guidelines. _The American Journal of Human Genetics_, 100(2), pp.267–280. DOI: [10.1016/j.ajhg.2017.01.004](https://doi.org/10.1016/j.ajhg.2016.12.00://doi.org/10.1016/j.ajhg.2017.01.004).

[^xavier2019tapes]: Xavier, A. et al., 2019. TAPES: A tool for assessment and prioritisation in exome studies. _PLoS Computational Biology_, 15(10), e1007453. DOI: [10.1371/journal.pcbi.1007453](https://doi.org/10.1371/journal.pcbi.1007453).

