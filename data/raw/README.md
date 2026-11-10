# Raw sequencing data

This folder contains the raw RNA-seq reads (FASTQ) used as the starting point of the analysis.

## Study design

| Condition/Group | Collection time point | Treatment received | n |
|---|---|---|---|
| Baseline | Pre-treatment | None (prior sample) | 8 |
| RT | Post-treatment | Radiotherapy | 4 |
| Combi | Post-treatment | Radiotherapy+Ceralasertib | 4 |

## Folder structure

- `baseline/`: pre-treatment samples (P01-P08)
- `RT/`: post-radiotherapy samples (P01-P04)
- `Combi/`: post-radiotherapy + ceralasertib samples (P05-P08)
- `samples_raw.csv`: sample table (patient, group, time point, file)
- `sequencing_info.md`: sequencing platform and library details

## File naming

`<patient>_<group>.fastq`, for example `P01_baseline.fastq`.

## Samples

| Group | Patients | Files |
|---|---|---|
| Baseline | P01-P08 | `P01_baseline.fastq` ... `P08_baseline.fastq` |
| RT | P01-P04 | `P01_RT.fastq` ... `P04_RT.fastq` |
| Combi | P05-P08 | `P05_Combi.fastq` ... `P08_Combi.fastq` |

**Maintainer:** Nuria Crespo
