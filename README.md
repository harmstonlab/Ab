# Ab
## Versions
* **STAR**: 2.7.1a
* **RSEM**: v1.3.1
* **AME**: 5.1.0
* **FASTQC**: v0.11.8
* **R**:

```
R version 4.0.5 (2021-03-31)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur 10.16
```
Versions of R packages used can be found in the Session Info section at the bottom of each `.html` file. 

## Data
* All raw and aligned data for this analysis can be obtained from GEO via the study accession number [GSE181844](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE181844). The processed data can also be found in this repository under the folder data/aligned.
* **Annotation file used:** Drosophila_melanogaster.BDGP6.22.97.chr.gtf
* **Reference fasta file used:** dm6.fa (Ensembl v97)

## Data labels
RNA-seq label | Description
---|---
WT|Guts from control flies kept in the dark (WT/Wild-type)
Ab (light)|Guts from flies in which ABCry2mCh is over-expressed in the gut stem cells.
Wg|Guts from flies in which Wg is over-expressed in the gut stem cells.
Wg_Ab (light)|Guts from flies in which Wg and ABCry2mCh are over-expressed in the gut stem cells.

## Analysis

**! Ensure that the annotation file is in the data/annotation folder before running the analysis**

The analysis was carried out to compare gene expression between 4 conditions -- control/TdTomato (WT), expressing AB-42-CRY2-mCh (Ab), expressing Wg alone (Wg), and AB-42-CRY2-mCh and Wg together (WgAb) -- using the QC.Rmd, DE.Rmd, and V_E.Rmd scripts for quality control, differential expression, and visualisation and enrichment respectively.

If running from scratch, these scripts can be found in the analysis folder and need to be run in the sequential order of QC.Rmd > DE.Rmd > V_E.Rmd as each script generates files required by the subsequent scripts. If not running from scratch, the outputs of each script can be found in their respective output subfolder in the analysis main folder. If the repository is cloned as is, and the .Rproj file is used, there should have no issues running the scripts.
