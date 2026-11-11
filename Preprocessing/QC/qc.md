# Quality Control (QC)

> **Status: template.** This repository reproduces the workflow of an RNA-seq project, but the data files (FASTQ files, count matrix) are empty placeholders. 

## 1. Purpose

This folder contains the quality control (QC) step of the RNA-seq analysis. The goal is to check that the sequencing data are of good quality before the downstream analysis (differential expression and pathway analysis), and to detect problematic samples (outliers) early.

QC is performed at two levels:

1. **Read level:** quality of the raw sequencing reads (FASTQ files), using FastQC and MultiQC.
2. **Count level:** quality and consistency of the samples once reads have been aligned and quantified (count matrix), using R.

## 2. Place in the workflow

```
FASTQ files  →  QC of reads (this folder)  →  Alignment / quantification  →  Count matrix  →  QC of counts (this folder)  →  Differential analysis  →  Pathways
```

- The FASTQ files are provided in `01_secuencias_individuos/fastq/`.
- The alignment and quantification are carried out in a separate step.
- The QC of the count matrix can only be run once the count matrix is available.

## 3. Study design

The study analyses lung adenocarcinoma tumour samples collected before and after treatment. There are 8 patients, each with a baseline (pre-treatment) sample and a post-treatment sample, giving 16 samples in total.

| Treatment group | Patients | Samples |
|---|---|---|
| Radiotherapy (RT) | 4 | 4 baseline + 4 post-RT |
| Radiotherapy + ceralasertib (Combi) | 4 | 4 baseline + 4 post-Combi |

Because each patient contributes a baseline and a post-treatment sample, the comparisons are paired by patient.

## 4. Folder content

```
QC/
├── fastqc/          # FastQC reports (one HTML report per FASTQ file)
├── multiqc/         # MultiQC report (summary of all samples)
├── figures/         # Plots from the count-matrix QC
├── scripts/
│   ├── 01_fastqc_multiqc.sh
│   └── 02_qc_matriz_conteos.R
└── qc.md            # This file
```

> In this template, `fastqc/` only contains one example placeholder (`P1_basal_R1_fastqc.html`). With real data it would contain one report per FASTQ file (32 reports for 16 paired-end samples).

## 5. Inputs

| Input | Location | Used by |
|---|---|---|
| FASTQ files (`*.fastq.gz`) | `01_secuencias_individuos/fastq/` | `01_fastqc_multiqc.sh` |
| Sample metadata | `01_secuencias_individuos/metadata.csv` | `02_qc_matriz_conteos.R` |
| Count matrix (genes in rows, samples in columns) | `01_secuencias_individuos/matriz_conteos.csv` | `02_qc_matriz_conteos.R` |

The metadata file must contain one row per sample (sample name in the first column) and the columns `paciente` (patient), `tratamiento` (treatment: RT or Combi) and `momento` (time point: basal or post). The sample names must match the column names of the count matrix.

## 6. Methods

### 6.1 QC of the reads (`01_fastqc_multiqc.sh`)

1. **FastQC** analyses each FASTQ file and produces an HTML report.
2. **MultiQC** collects all FastQC reports into a single summary report for the 16 samples.

Main aspects to check:

- Number of reads per sample (should be similar across samples).
- Per-base sequence quality (should stay high, with a slight drop at the end of the reads).
- Presence of adapter sequences.
- GC content distribution.
- Level of duplicated reads (a high level is common in RNA-seq and is not a problem by itself).

If adapters or low-quality read ends are detected, the reads should be trimmed (for example with `fastp` or `Trimmomatic`) and the QC repeated before alignment. If the quality is good, no trimming is required.

### 6.2 QC of the count matrix (`02_qc_matriz_conteos.R`)

1. **Reads per sample:** bar plot of the total counts of each sample, to detect samples with unusually few reads.
2. **Gene filtering:** genes with fewer than 10 total counts are removed.
3. **Variance-stabilising transformation (`vst`, DESeq2)** to make samples comparable.
4. **Principal component analysis (PCA):** samples coloured by time point, shaped by treatment and labelled by patient.
5. **Sample distance heatmap:** shows which samples are most similar to each other.


## 7. Outputs

| Output | Location |
|---|---|
| FastQC reports | `fastqc/` |
| MultiQC summary report | `multiqc/multiqc_report.html` |
| Reads per sample | `figures/lecturas_por_muestra.png` |
| PCA of the samples | `figures/pca_muestras.png` |
| Sample distance heatmap | `figures/heatmap_distancias.png` |

## 8. Handling problematic samples

If a sample is identified as an outlier (very few reads, poor quality or clearly separated from the rest in the PCA), it is not removed automatically. The finding is recorded here and the decision on whether to exclude the sample is taken by the whole group. With only 4 pairs per treatment, removing a sample has a strong impact on the downstream analysis.

## 9. Requirements

- [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [MultiQC](https://multiqc.info/)
- R with the packages `DESeq2`, `ggplot2` and `pheatmap`

## 10. QC results

*Not available yet. This section will be completed when the scripts are run with real data (number of samples reviewed, tools used, observations and any problematic samples).*
