---
layout: default
title: national_sepsis_registry
nav_order: 5
---

Last update: 20240919

National sepsis registry
========================

The precision medicine unit can act as a leading user for a national
sepsis registry. Our analysis of public and private data allow us to
accurately measure the number of cases per year in all institutions. We
can also provide examples of key data that is most valuable including
routing clinical and demographic features, examples of how databases are
structured, and example of how advance statistical analysis can use this
data in daily management and research projects in combination with new
technologies. Figure [1](#fig:national_registry1){reference-type="ref"
reference="fig:national_registry1"} (summary) and
[2](#fig:national_registry2){reference-type="ref"
reference="fig:national_registry2"} (detailed) illustrates how we can
accurate model the requirements of a national registry database:

-   We can state that the total number of sepsis cases for 2010-2022 was
    368'719. A typical year (2022) had 35'205 cases with per-institution
    averages of 22 (sd: 57, min-max 0-600). The total subset of primary
    and secondary diagnosis during this period was 245'552.

-   We can give a breakdown of estimated numbers accurate for each
    institution.

-   We can identify the key players which have the largest number of
    adult and child cases (e.g. Insel Gruppe, Universitatsspital Zurich,
    Kantonsspital Baselland).

-   We can reproduce the numbers of main diagnosis per year as reported
    by FOPH BAG and OBSAN, shown in **table
    [1](#tab:year_report){reference-type="ref"
    reference="tab:year_report"}**.

::: {#tab:year_report}
  **Diagnosis**    **Total Number of Cases**   **Number of Hospitalisations**   **Average Number of Cases per Hospital**
  --------------- --------------------------- -------------------------------- ------------------------------------------
  J.2.1.F HD                11'782                          109                                   108
  J.2.4.F ND                 5'541                          103                                    54

  : Number of cases in 2022. HD (Hauptdiagnose) und ND (Nebendiagnose),
  HD and ND are German abbreviations for Principal and Secondary
  diagnoses, respectively.
:::

[\[tab:year\_report\]]{#tab:year_report label="tab:year_report"}

**The database for a Swiss national sepsis registry until spanning from
2010-2030 will contain 400'000 cases. For each case it will contain at
least a minimal set of 40 demographic and clinical data variables.** We
can advise on the architecture of the database and recommend commercial
solutions for hosting a secure and accessible platform.

![Cases per year for a national registry (summary). Federal level number
of sepsis cases from 2010-2022. These number demonstrate the number of
observations required for a national registry. Federal statistics from
Bundesamt für Gesundheit (BAG, Federal office for public
health).](../stats/foph_key_stats/output/p_patch_tally_main){#fig:national_registry1
width="90%"}

![Cases per year for a national registry (detailed). Federal level
number of sepsis cases from 2010-2022. These number demonstrate the
number of observations required for a national registry. Federal
statistics from Bundesamt für Gesundheit (BAG, Federal office for public
health).](../stats/foph_key_stats/output/p_patch_year_case_inst_variability_main){#fig:national_registry2
width="90%"}

![Demo of a national sepsis registry made with synthetic values based on
real-world
samples.](../national_registry/data/registry_snapshot.pdf){#fig:national_registry_snapshot
width="100%"}

Figure [3](#fig:national_registry_snapshot){reference-type="ref"
reference="fig:national_registry_snapshot"} shows a snapshot of the demo
national sepsis registry. We have included variables that cover the
minimal set of features and provide a number of optional advanced
features which are important to research and future development. Table
[2](#tab:national_registry_example){reference-type="ref"
reference="tab:national_registry_example"} shows an example of features
and data types that are captured. The current modelled variables
contain:
`Patient_ID, Age, Gender, Diagnosis_Code, Source_of_Infection, Organ_Dysfunction, Treatment_Administered, AMS_Compliance, National_Sepsis_Pathway_Used, Outcome, Sepsis_Standard_Met, Date_Admission, Date_Discharge, Date_Follow_up, study_site, sex, age_at_bc_days, age_grp, ethnicity, category, ccc_final, hosp_sepsis, hosp_delay, hosp_los, hosp_los_bc, pathogen_grp, focus_grp, picu, picu_reason, picu_los, picu_los_bc, cahai, death_30_bc, death_delay, cons05_score_agg, pelod_score_agg, psofa_score_agg, podium_score_agg`.

::: {#tab:national_registry_example}
  **Field Name**                    **Data Type**                                                                                  **Description**
  --------------------------------- ---------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------
  Patient\_ID                       String                                                                                         A unique identifier for each patient to ensure privacy and enable tracking.
  Age                               Integer                                                                                        Age of the patient at the time of admission.
  Gender                            Char(1)                                                                                        Gender of the patient (M for male, F for female).
  Admission\_Date                   Date                                                                                           Date when the patient was admitted to the hospital.
  Discharge\_Date                   Date                                                                                           Date when the patient was discharged from the hospital.
  Diagnosis\_Code                   ICD-10 Code                                                                                    ICD-10 code for sepsis (e.g., A41.9 for sepsis, unspecified organisms).
  Source\_of\_Infection             String                                                                                         The likely source or site of the infection leading to sepsis.
  Organ\_Dysfunction                Enum(\"Renal\", \"Cardiovascular\", \"Respiratory\", \"Hepatic\", \"Multiorgan\", \"Other\")   Specific organs affected by sepsis.
  Treatment\_Administered           Text                                                                                           Key treatments provided to the patient (e.g., antibiotics, vasopressors, supportive care).
  AMS\_Compliance                   Boolean                                                                                        Indicates whether antimicrobial stewardship (AMS) guidelines were followed (Yes/No).
  National\_Sepsis\_Pathway\_Used   Boolean                                                                                        Indicates if a national sepsis pathway was followed for treatment (Yes/No).
  Outcome                           Enum(\"Survived\", \"Deceased\")                                                               Patient's condition at discharge.
  Follow\_up\_Date                  Date                                                                                           Date for a follow-up visit or assessment, if applicable.
  Sepsis\_Standard\_Met             Boolean                                                                                        Indicates whether the minimal national sepsis standard for care was met (Yes/No).

  : Example subset of registry data fields
:::

[\[tab:national\_registry\_example\]]{#tab:national_registry_example
label="tab:national_registry_example"}
