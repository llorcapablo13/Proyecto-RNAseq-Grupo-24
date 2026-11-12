# Proyecto-RNAseq-Grupo-24: NSCLC Adenocarcinoma RNA-seq Analyisis

## Project Overview
This repository contains the code and documentation for an RNA-seq study aimed at investigating transcriptional changes in patients with non-small cell lung cancer, specifically lung adenocarcinoma, after receiving radiotherapy (RT) or a combination of radiotherapy and ceralasertib (Combi).
The project aims to characterize changes in gene expression induced by both treatments and identify molecular signatures associated with each therapeutic strategy by comparing baseline tumor samples (prior to treatment) with post-treatment samples. Additionally, it aims to compare the molecular effects of both treatments to identify shared and specific gene expression changes for each therapeutic strategy.

## Experimental Design
The study includes patient tumor samples collected at two time points: before and after treatment, across two different therapeutic groups.
| Condition/Group | Collection Time Point | Treatment Received | n |
| :--- | :--- | :--- |:--- |
| Baseline | Pre-treatment | None (prior sample) | 8 |
| RT | Post-treatment | Radiotherapy | 4 |
| Combi | Post-treatment | Radiotherapy+Ceralasertib | 4 |

- **Study Design**: Longitudinal and comparative gene expression analysis.
- **Technology**: RNA sequencing (RNA-seq).
- **Tissue**: Tumor samples from patients with lung adenocarcinoma.
- **Treatment Conditions**: Radiotherapy (RT) and a combination of radiotherapy with ceralasertib (Combi).
- **Collection Time Points**: Pre-treatment and post-treatment for both therapeutic groups.

## Objectives
1. **Characterization of baseline gene expression**:
Characterize the transcriptomic profile of tumor samples before treatment to establish a reference gene expression profile.
2. **Transcriptional changes induced by radiotherapy**:
Identify differentially expressed genes and alterations in molecular pathways following radiotherapy treatment by comparing baseline and post-RT samples.
3. **Effects of combination treatment**:
Characterize transcriptional changes associated with the combination of radiotherapy and ceralasertib (Combi) by comparing baseline and post-combination treatment samples.
4. **Comparative analysis of treatments**:
Compare the transcriptional effects of RT alone versus the combination of RT and ceralasertib (Combi) to identify shared and specific gene expression signatures for each therapeutic strategy.
5. **Functional analysis and molecular pathway enrichment**:
Investigate the biological processes, molecular pathways, and cellular mechanisms associated with the transcriptional changes induced by the treatments.

## Repository Structure
This repository contains the sequences, scripts and documentation necessary to carry out RNA-seq data processing, differential gene expression analysis and subsequent functional analyses for data interpretation.

All of this has been organized as follows:

```
Proyecto-RNAseq-Grupo-24/
├── 01_data/raw/
│   └── raw/
│       ├── Combi/
│       ├── RT/
│       ├── baseline/
│       └── README.md
├── 02_Preprocessing/
│   ├── Alignment/
│   │   ├── BAM files/
│   │   ├── Scripts/
│   │   └── README.md
│   └── QC/
│       ├── fastqc/
│       ├── figures/
│       ├── multiqc/
│       ├── scripts/
│       └── README.md
├──03_Differential analysis/
│   ├── Data/
│   ├── Results/
│   │   └── Plots/
│   ├── scripts/
│   └── README.md
├── 04_Pathway analysis/
│   ├── GO_results/
│   ├── GSEA_results/
│   ├── KEGG_results/
│   ├── Scripts/
│   ├── figures/
│   │   ├── GO_plots/
│   │   ├── GSEA_plots/
│   │   ├── Heatmap_plots/
│   │   └── KEGG_plots/
│   ├── interpretation/
│   └── README.md
└── README.md
```

