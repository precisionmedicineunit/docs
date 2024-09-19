---
layout: default
title: example_project
nav_order: 5
---

Last update: 20240919

Example project
===============

Objective {#objective .unnumbered}
---------

Develop a predictive model to forecast the need for ICU admission based
on daily clinical measurements, thereby enhancing patient care and
resource allocation.

Funding and Project Initiation {#funding-and-project-initiation .unnumbered}
------------------------------

-   **Funding Source:** Grant application starts with project variables.

    -   **Example Variables:** `project_id`, the scientific basis of the
        product e.g. `code_repository`, `public_documentation`, and
        examples of outcomes that we expect, e.g. `action_taken`

-   **Project Registration:** Register the project within the precision
    medicine unit framework to ensure consistent data handling and
    integration with existing structures.

    -   **Example Variable:** `project_id`

Patient Enrolment and Data Collection {#patient-enrolment-and-data-collection .unnumbered}
-------------------------------------

-   **Patient Enrolment:** Follow a standardised protocol for patient
    recruitment to ensure uniform data collection across the unit.

    -   **Example Variables:** `project_id`, `patient_id`,
        `enrolment_date`, `consent_status`, `public_documentation`

-   **Data Collection:** Implement automated systems to use daily
    clinical measurements from a centralised database.

    -   **Example Variables:** `measurement_date`, `clinical_metrics`

Analysis and Software Development {#analysis-and-software-development .unnumbered}
---------------------------------

-   **Software Development:** Use the published predictive algorithms in
    a version-controlled environment where code is systematically
    documented and linked to project variables.

    -   **Example Variables:** `algorithm_version`, `code_repository`,
        `public_documentation`

-   **Data Processing:** Use automated scripts to process the incoming
    data daily, structuring it according to predefined templates that
    facilitate easy integration and analysis.

    -   **Example Variables:** `processed_data_output`, `analysis_date`,
        `code_repository`

Result Generation and Clinical Integration {#result-generation-and-clinical-integration .unnumbered}
------------------------------------------

-   **Result Generation:** Generate predictive results daily, storing
    them in an accessible format within the centralised system.

    -   **Example Variables:** `patient_id`, `result_id`,
        `prediction_score`, `prediction_date`, `public_documentation`

-   **Data Return to Clinic:** Integrate the predictive results back
    into the clinical workflow, enabling real-time decision-making.

    -   **Example Variables:** `patient_id`, `result_id`,
        `clinical_integration_date`, `action_taken`,
        `public_documentation`

Outcome and Impact {#outcome-and-impact .unnumbered}
------------------

-   **Actionable Clinical Outcomes:** Provide clinicians with daily
    reports of patients potentially requiring ICU care, supporting
    timely and effective clinical interventions.

    -   **Example Variables:** `report_id`, `report_date`,
        `public_documentation`

-   **Feedback Loop:** Regularly update the predictive model based on
    clinician feedback and outcome data to enhance accuracy and
    relevance.

    -   **Example Variables:** `feedback_id`, `modification_date`

Project Tracking and Management {#project-tracking-and-management .unnumbered}
-------------------------------

-   **Variable Tracking:** Maintain a centralised log of all project
    variables, ensuring that updates are propagated automatically to all
    linked documents and systems.

-   **Documentation:** Employ Markdown or LaTeX for all project
    documentation, linked directly to the variable tracking system for
    consistency and real-time updates.

    -   **Example Variables:** `document_id`, `last_updated`

Benefits of the Unified Approach {#benefits-of-the-unified-approach .unnumbered}
--------------------------------

-   **Efficiency:** Streamlines project management by reducing
    redundancy and automating updates, ensuring that project components
    are efficiently managed.

-   **Transparency:** Provides clear visibility into project operations
    through centralised tracking of all critical variables and
    documentation.

-   **Scalability:** Facilitates easy scaling of the project framework
    to include new patient cohorts or measurement types without
    extensive modifications.

\|L0.2\|L0.2\|L0.2\|L0.4\|

\
**Variable Name** & **Example Content** & **Phase(s) Used** &
**Description/Usage**\

**Table  -- continued from previous page**\
**Variable Name** & **Example Content** & **Phase(s) Used** &
**Description/Usage**\

project\_id & PMU2024-001 & Funding and Project Initiation, Tracking and
Management & Unique identifier for the project within the Precision Med
framework.\
patient\_id & PID123456 & Patient Enrollment, Data Collection, Result
Generation, Data Processing & Unique identifier for each enrolled
patient.\
enrolment\_date & 2024-01-01 & Patient Enrollment, Data Processing,
Result Generation & Date when the patient was enrolled in the study.\
consent\_status & Consented & Patient Enrollment, Data Processing &
Consent status of the patient for participation in the study.\
measurement\_date & 2024-01-02 & Data Collection, Data Processing,
Result Generation & Date on which clinical measurements were taken.\
clinical\_metrics & Blood pressure, Heart rate & Data Collection, Data
Processing, Result Generation & Types of clinical measurements collected
daily.\
algorithm\_version & v1.0 & Software Development, Data Processing,
Result Generation & Version of the predictive algorithm used.\
code\_repository & <https://github.com> & Funding and Project
initiation, Software Development, Data Processing, Result Generation &
URL of the version-controlled repository storing the project's code.\
data\_output & Data\_20240102.csv & Data Processing, Result Generation &
Filename or identifier for the output from data processing.\
analysis\_date & 2024-01-03 & Data Processing, Result Generation & Date
on which the data was analyzed.\
result\_id & RES12345678 & Result Generation & Unique identifier for a
set of predictive results.\
prediction\_score & 0.85 & Result Generation & Score indicating the
likelihood of ICU need.\
prediction\_date & 2024-01-04 & Result Generation & Date when the
prediction was made.\
clinical\_integration\_date & 2024-01-05 & Clinical Integration & Date
when predictive results were integrated into the clinical workflow.\
action\_taken & Reviewed by clinician & Clinical Integration &
Description of the clinical action taken based on predictions.\
report\_id & REP20240105 & Outcome and Impact, Data Processing & Unique
identifier for the generated daily report.\
report\_date & 2024-01-05 & Outcome and Impact, Data Processing & Date
when the report was generated.\
feedback\_id & FB20240106 & Feedback Loop & Unique identifier for
feedback entry from clinicians.\
modification\_date & 2024-01-07 & Feedback Loop, Data Processing & Date
when modifications were made to the predictive model.\
document\_id & DOC1234 & Project Tracking and Management, Data
Processing & Identifier for a specific project document.\
last\_updated & 2024-01-08 & Project Tracking and Management, Data
Processing & Last date the document was updated.\
