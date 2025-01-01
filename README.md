# Cancer Stem Cells Trajectory Inference and Pseudotime Analysis

This project performs trajectory inference and pseudotime analysis on cancer stem cells (CSCs) to identify cellular transitions from stemness to differentiation. The analysis uses single-cell RNA sequencing data from the **GSE119469** dataset.

## Data Source:
- **Dataset**: GSE119469 (Breast Cancer Stem Cell Data)
- **Data Link**: [GSE119469 on GEO](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE119469)

## Requirements:
- **R Packages**: Seurat, monocle3, ggplot2, dplyr
- **Bash** for data preprocessing

## Project Structure:
.
├── data/
│   ├── raw/
│   │   └── GSE119469_RAW_counts.csv
│   └── processed/
├── scripts/
│   ├── preprocess_data.sh
│   └── trajectory_inference_analysis.R
└── README.md

