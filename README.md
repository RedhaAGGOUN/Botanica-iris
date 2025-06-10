# Botanica Iris – Exploratory Data Analysis with R

## 🌸 Project Overview

This project explores the classic **Iris dataset** using modern R tools.  
**Goal:** Reveal insights about iris flower species by analyzing, visualizing, and summarizing the data.

---

## 🚀 Objectives

- **Understand** the structure and distribution of the Iris dataset
- **Apply** descriptive statistics and data cleaning
- **Visualize** patterns and relationships with ggplot2
- **Detect** and explain outliers
- **Highlight** the variables that best separate species

---

## 🗂️ Project Structure

- `iris_analysis.R` : Main R script (fully commented, line-by-line explained)
- `iris_cleaned.csv` : Exported clean data
- `iris_scatter_petal_plot.png` : Example plot image
- `iris_pairwise_plot.png` : Pairwise relationships plot (optional)
- `README.md` : Project overview and instructions

---

## 📦 Requirements

- R (>= 4.0.0 recommended)
- R packages:
  - `ggplot2`
  - `dplyr`
  - `corrplot`
  - `GGally`
  - `tidyr` (usually included in RStudio/Tidyverse)
  
Install missing packages in R with:
```r
install.packages(c("ggplot2", "dplyr", "corrplot", "GGally", "tidyr"))
