# Differential analysis

This folder contains the differential expression analysis of the project.
Samples are compared between conditions to identify the genes whose
expression changes. The results are the input of the Pathway analysis step.

## Input
The analysis starts from the count matrix generated in the Preprocessing
step, together with a sample metadata table.

## Study design and comparisons

| Group    | Time point     | Treatment received          | n | Patients |
|----------|----------------|-----------------------------|---|----------|
| Baseline | Pre-treatment  | None (prior sample)         | 8 | P01-P08  |
| RT       | Post-treatment | Radiotherapy                | 4 | P01-P04  |
| Combi    | Post-treatment | Radiotherapy + ceralasertib | 4 | P05-P08  |


## Folder structure
- `Data/`: count matrix (`count_matrix.csv`) and sample metadata (`sample_metadata.csv`).
- `scripts/`: analysis script (`Differential_analysis.R`).
- `Results/`: one differential expression table per comparison.
- `Results/Plots/`: figures of the analysis (volcano plot, PCA).

## Output
Each table lists the genes with their log2 fold change, p-value and
adjusted p-value. These tables are passed to the Pathway analysis step
(GO, GSEA and KEGG).

## Maintainer
Pablo Llorca 


