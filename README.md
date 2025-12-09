# NDVI-Remote-Sensing-Analysis
NDVI analysis using Terra and Leaflet in R for agricultural vegetation monitoring.
# 🌿 NDVI Analysis and Visualization Workflow

This repository contains a complete workflow for computing, analyzing, and visualizing **Normalized Difference Vegetation Index (NDVI)** using R.  
It includes scripts, sample data, statistical summaries, and both static and interactive visual outputs.

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| **ndvi_script.R** | Main R script used to calculate NDVI, extract statistics, and generate visual outputs. |
| **NDVI_statistics.csv** | Summary statistics (mean, median, min, max, etc.) derived from the NDVI raster. |
| **ndvi_median_demo.tif** | Example NDVI raster used for analysis. |
| **ndvi_map.png** | Static NDVI map exported from R. |
| **ndvi_interactive_map.html** | Interactive NDVI map generated with *leaflet* in R. |

---

## 🚀 Features

- NDVI calculation from raster data  
- Statistical summary extraction  
- Static NDVI visualization (*ggplot2*)  
- Interactive NDVI map for web viewing (*leaflet*)  
- Export-ready graphics and tables  

---

## 🛠️ Getting Started

### **Requirements**

Install required R packages:
source("ndvi_script.R")
ndvi_interactive_map.html

```r
install.packages(c("terra", "ggplot2", "leaflet", "dplyr"))
