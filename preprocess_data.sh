#!/bin/bash

# Create necessary directories
DATA_DIR="./data"
RAW_DIR="$DATA_DIR/raw"
PROCESSED_DIR="$DATA_DIR/processed"

mkdir -p $RAW_DIR $PROCESSED_DIR

# Download the dataset (replace URL with actual GEO download link)
wget -P $RAW_DIR "https://ftp.ncbi.nlm.nih.gov/geo/series/GSE119nnn/GSE119469/suppl/GSE119469_RAW.tar"

# Extract the data
tar -xvf $RAW_DIR/GSE119469_RAW.tar -C $RAW_DIR

# Move raw files to processed directory
mv $RAW_DIR/* $PROCESSED_DIR/

# Ensure proper file naming conventions
cd $PROCESSED_DIR
ls
