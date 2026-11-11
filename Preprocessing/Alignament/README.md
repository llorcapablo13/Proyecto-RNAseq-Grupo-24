# Alignment

> **Status: template.** This repository reproduces the workflow of an RNA-seq project, but the data files (bam, txt...) are empty placeholders. 

## 1. Purpose

This folder contains the alignment of the sequencing data to the genome. Main QC of this alignment and Bam file resulted after the alignment are also included.

## 2. Place in the workflow

```
FASTQ files  →  QC of reads  →  Alignment (this folder) / quantification  →  Count matrix  →  QC of counts (this folder)  →  Differential analysis  →  Pathways
```

## 3. Study design

The study analyses lung adenocarcinoma tumour samples collected before and after treatment. There are 8 patients, each with a baseline (pre-treatment) sample and a post-treatment sample, giving 16 samples in total.

| Treatment group | Patients | Samples |
|---|---|---|
| Radiotherapy (RT) | 4 | 4 baseline + 4 post-RT |
| Radiotherapy + ceralasertib (Combi) | 4 | 4 baseline + 4 post-Combi |

## 4. Folder content

```
Alignment/
├── GRCh38                      # Human genome version 38
├── Unique mapped lectures      # Percentage per sample of unique mapped lectures
├── Unmapped lectures           # Percentage per sample of unmapped lectures
├── Multiple mapped lectures    # Percentage per sample of multiple mapped lectures
├── BAM files                   # BAM files after alignment of each sample
├── scripts/
│   ├── START script
└── README.md                   # This file
```

## 5. Inputs

| Input | Location | Used by |
|---|---|---|
| FASTQ files (`*.fastq.gz`) | `01_secuencias_individuos/fastq/` | `START script` |


## 6. Methods

### Alignment with START
STAR is a standalone C++ command-line software package.
1. Alignment of **FastQC** to gene annotations **GTF** and gemneration of BAM file and a gene count
2. QC of aligment, unique mapped regions has to be above 80% of reads

## 7. Outputs

| Output | Location |
|---|---|
| mmapped lectures | this directory |
| Bam files | `BAM files/` |



**Maintainer:** Raquel Larramona Arcas
