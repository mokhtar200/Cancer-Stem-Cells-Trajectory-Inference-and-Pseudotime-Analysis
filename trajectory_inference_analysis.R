# Load necessary libraries
library(Seurat)
library(monocle3)
library(ggplot2)
library(dplyr)

# Load the raw counts data
raw_data <- read.csv("./data/processed/GSE119469_RAW_counts.csv", row.names = 1)

# Create Seurat object
seurat_object <- CreateSeuratObject(counts = raw_data)

# Preprocessing steps: normalization, feature selection, scaling
seurat_object <- NormalizeData(seurat_object)
seurat_object <- FindVariableFeatures(seurat_object)
seurat_object <- ScaleData(seurat_object)
seurat_object <- RunPCA(seurat_object)

# Convert Seurat object to a Monocle3 object
cds <- as.cell_data_set(seurat_object)

# Preprocess data for Monocle3
cds <- preprocess_cds(cds, num_dim = 50)
cds <- reduce_dimension(cds)

# Perform clustering
cds <- cluster_cells(cds)

# Learn trajectory graph
cds <- learn_graph(cds)

# Order cells by pseudotime
cds <- order_cells(cds)

# Visualize the pseudotime trajectory
plot_cells(cds, color_cells_by = "pseudotime") + 
  theme_minimal() +
  ggtitle("Pseudotime Trajectory of Cancer Stem Cells")

# Plot gene expression along pseudotime
plot_genes_in_pseudotime(cds, genes = c("ALDH1A1", "SOX2"))
