---
layout: default
title: ivdr
nav_order: 5
---

Last update: 20240919

IVDR compliance documentation and version controls
==================================================

Introduction to IVDR
--------------------

The In Vitro Diagnostic Medical Devices Regulation (IVDR) is an
essential legislative framework that governs the safety and performance
of in vitro diagnostic medical devices (IVDs) within the European Union.
Implemented to enhance patient safety and ensure high standards of
quality, the IVDR was adopted alongside the Medical Devices Regulation
(MDR) to update and replace directives established in the 1990s,
reflecting significant technological and scientific advancements in the
sector.

The IVDR, Regulation (EU) 2017/746, was published in May 2017 and became
fully applicable on May 26, 2022. This regulation introduces a
risk-based classification system, stricter pre-market scrutiny, and
enhanced transparency through a comprehensive EU database on medical
devices (EUDAMED). It mandates clear obligations for economic operators,
including manufacturers, importers, and distributors, and strengthens
post-market surveillance and vigilance requirements. This regulatory
framework is crucial for ensuring that in vitro diagnostic devices meet
the latest standards for safety and efficacy, supporting the health and
well-being of Swiss and EU citizens. For detailed guidance and documents
endorsed by the Medical Device Coordination Group (MDCG), we refer to
the European Commission's dedicated page on IVDR:
<https://health.ec.europa.eu/medical-devices-sector/new-regulations/guidance-mdcg-endorsed-documents-and-other-guidance_en>.

The relevant resources for detailed guidelines can be found here:

-   International Council for Harmonisation of Technical Requirements
    for Pharmaceuticals for Human Use (ICH) Quality Guidelines:
    <https://www.ich.org/page/quality-guidelines>

-   European Medicines Agency (EMA) Scientific Guidelines:
    <https://www.ema.europa.eu/en/human-regulatory/research-development/scientific-guidelines>

-   Eudralex - The rules governing medicinal products in the European
    Union: <https://health.ec.europa.eu/medicinal-products/eudralex_en>

We are developing a unique method of single-source management combined
with an everything-as-code approach to systematically address IVDR
compliance from the outset. In many commercial companies, regulatory
compliance is typically managed by a dedicated team. However, by
adopting our planned system of linked documentation from the start, we
can automate much of this process. This proactive approach makes the
entire audit process more straightforward and less stressful, provided
our members are on board with using this system.

Example: Compliance and audit
-----------------------------

During audits, it is common for auditors to select a specific piece of
information, such as a patient ID, a reference file, or a code
repository, and then verify compliance by reviewing all related
documentation and data. Our system simplifies this process by
automatically linking and tagging every relevant document and dataset to
the selected item.

To perform an audit, we execute a command that initiates a thorough
search through our integrated system, pulling together all connected
data and documentation. This network of information, pre-prepared and
linked, serves as the foundation for our audit documentation. The audit
reports are dynamically populated with the relevant variables pulled
from our single-source variable files, which meticulously list every
piece of reference data and code repositories, including metadata. This
ensures that each piece of information is traceable and verifiable at
any moment.

This approach not only secures ongoing compliance but also enables us to
demonstrate our adherence to IVDR standards effectively and
transparently at any time. The efficiency of this process significantly
simplifies the audit procedure, reducing the workload typically managed
by a dedicated regulatory team and thereby enhancing our operational
efficiency and compliance reliability.

The following example demonstrates some of the variables used to
automatically retrieve the linked data.

### Document Control

-   **Document ID:**

-   **Version:**

-   **Approval date:** \[Insert Date\]

-   **Review cycle:** Annually or upon significant changes to the
    pipeline, software, or regulatory guidelines.

### Introduction

-   **Purpose:** To detail the version control practices and database
    management strategies employed in for IVDR compliance.\

-   **Scope:** Includes software version control, database management,
    and change tracking for compliance with regulatory requirements.

### System overview

-   **Pipeline Name:**\

-   **Version Control System:** Git\

-   **Components:**

    -   GATK for variant detection.

    -   Ensembl VEP for annotation.

    -   as the reference genome.

### Version control management

**Git repository details:**

-   **Repository:**

-   **commit:**

-   **GATK repository:**

-   **GATK commit:**

-   **Ensembl VEP repository:**

-   **Ensembl VEP commit:**

-   **Example commit check:** Use `git log –oneline` to review recent
    commits and ensure updates are tracked.

**Release management:**

-   **Release tag used:**
    `git tag -a -m "Release version 1.0 for clinical deployment"`

-   **Check out release:** `git checkout tags/`

### Reference genome details

-   **Internal usage documentation:**\

-   **Genome name:**\

-   **Genome version:**\

-   **Source and location:**\

-   **Checksum/Hash Value:** To verify integrity before use.

-   **Updating reference data:** Process for updating reference genome
    versions documented in `REF_UPDATE.md` at the repository root.

Note: see how PacBio does
this:<https://github.com/PacificBiosciences/reference_genomes/blob/main/reference_genomes/human_GRCh38_no_alt_analysis_set/human_GRCh38_no_alt_analysis_set.sh>

### Metadata and compliance tracking

**Metadata repository integration:**

-   **System name:** Clinical metadata repository (CMR)

-   **Metadata includes:** Version tracking, processing steps, QC
    metrics, and usage logs.

-   **Automated metadata logging:** Scripts to pull version info and log
    it in CMR.

-   **Example metadata retrieval command:** `git describe –tags –always`

### Compliance tagging and audit trails

**Audit trail setup:**

-   **Log commands:** `git log –since="YYYY-MM-DD" –grep=""`

-   **Audit reports:** Automatically generated from CMR data, including
    Git tag and commit references for audit periods.

### Case study and example documentation

-   **Example usage:** Document a hypothetical use case where processes
    a sample, including Git commit IDs for software and reference data
    used.\

-   **Compliance Example:** Show a compliance check with links to Git
    commits proving usage of the validated versions.

### Conclusion

**Summary:** Emphasises the robustness of the version-controlled
environment in maintaining IVDR compliance and ensuring the
reproducibility and reliability of clinical diagnostics.

### Appendices

-   **A. Git command reference:** Common commands used for version
    control in the project.

-   **B. Change management logs:** Example format for documenting
    significant changes.

-   **C. Compliance tag definitions:** Detailed explanation of tags used
    for IVDR compliance.
