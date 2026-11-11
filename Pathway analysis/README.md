# Pathway Analysis
This directory contains simulated pathway enrichment results for a RNA-seq study of non-small cell lung cancer (NSCLC), comparing Baseline, Radiotherapy (RT) and Combination Therapy (Combi).

## Directory structure
**GO_results/**: Gene Ontology (GO) biological process enrichment results.
- GO_Combi_vs_Baseline.csv
- GO_Combi_vs_RT.csv
- GO_RT_vs_Baseline.csv

**GSEA_results/**: Gene Set Enrichment Analysis results, including comparisons between treatment groups and specific gene signatures.
- GSEA_Combi_vs_Baseline.csv
- GSEA_Combi_vs_RT.csv
- GSEA_IFN_response.csv
- GSEA_MYC_targets.csv
- GSEA_RT_vs_Baseline.csv

**KEGG_results/**: KEGG pathway enrichment results.
- KEGG_Combi_vs_Baseline.csv
- KEGG_Combi_vs_RT.csv
- KEGG_RT_vs_Baseline.csv

**figures/**: Visualization outputs from pathway enrichment analyses.
- GO_plots/: Gene Ontology enrichment plots.
- GSEA_plots/: Gene Set Enrichment Analysis plots.
- Heatmap_plots/: Heatmaps of gene expression and enrichment results.
- KEGG_plots/: KEGG pathway enrichment plots.

**interpretation/**: Biological interpretation and comparative summaries of pathway analysis results.
- biological_interpretation.md
- comparison_summary.md

**Scripts/**: Scripts used to perform pathway enrichment analyses and generate visualizations.

## Analysis overview
The pathway analysis includes three main approaches:
1. **Gene Ontology (GO)**: Identification of enriched biological processes.
2. **Gene Set Enrichment Analysis (GSEA)**: Identification of enriched gene sets and biological signatures, including Interferon (IFN) response and MYC targets.
3. **KEGG**: Identification of enriched signaling pathways and molecular interactions.

Results are provided as CSV files, with corresponding visualizations organized into separate figure directories (png or pdf files). Biological interpretation and comparisons between treatment conditions are documented in the interpretation/ directory.
