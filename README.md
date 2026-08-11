# 🧬 Single-Cell RNA-seq Analysis with Bioconductor

<p align="left">
  <img src="https://img.shields.io/badge/Bioconductor-single--cell-2C7FB8?style=for-the-badge" alt="Bioconductor">
  <img src="https://img.shields.io/badge/Format-Hands--on-7FC97F?style=for-the-badge" alt="Hands-on">
  <img src="https://img.shields.io/badge/Duration-90%20min-FDC086?style=for-the-badge" alt="90 minutes">
  <img src="https://img.shields.io/badge/Quarto-workshop-75AADB?style=for-the-badge" alt="Quarto">
</p>

A **90-minute hands-on workshop** on single-cell RNA-seq analysis using the
Bioconductor ecosystem.

The session follows a complete workflow built around a `SingleCellExperiment`
object, from quality control to cell-type annotation. The statistical and
biological foundations of the individual methods are covered separately in the
accompanying theoretical session.

> [!TIP]
> The central idea of the workshop is to keep the complete analysis inside the
> same interoperable `SingleCellExperiment` object while progressively adding
> QC metrics, normalized expression values, embeddings, clusters and cell labels.

---

## ⏱️ Schedule

| Time | Section |
|---:|---|
| **10 min** | 🧰 Introduction, dataset and `SingleCellExperiment` |
| **15 min** | 🔎 Quality control |
| **15 min** | 📐 Normalization and feature selection |
| **15 min** | 🗺️ PCA and UMAP |
| **10 min** | 🧩 Graph-based clustering |
| **10 min** | 🧬 Marker gene detection |
| **10 min** | 🏷️ Reference-based cell-type annotation with `SingleR` |
| **5 min** | 💬 Wrap-up and discussion |

**Total: 90 minutes**

---

## 🐭 Dataset

The workshop uses mouse gastrulation data from
[`MouseGastrulationData`](https://bioconductor.org/packages/MouseGastrulationData/).

The main dataset is:

```r
sce <- MouseGastrulationData::WTChimeraData(
    samples = 5,
    type = "processed"
)
```

For reference-based cell-type annotation, we use the corresponding embryonic
atlas:

```r
ref <- MouseGastrulationData::EmbryoAtlasData(samples = 29)
```

---

## 📦 Installation

Install the required Bioconductor packages with:

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(c(
    "BiocStyle",
    "SingleCellExperiment",
    "MouseGastrulationData",
    "scuttle",
    "scater",
    "scran",
    "bluster",
    "SingleR",
    "EnsDb.Mmusculus.v79",
    "AnnotationDbi"
))
```

Additional CRAN packages used for visualization:

```r
install.packages(c(
    "patchwork",
    "Polychrome"
))
```

---

## 🚀 Run the workshop

The tutorial is written in Quarto:

```text
workshop.qmd
```

Render it with:

```bash
quarto render workshop.qmd
```

or launch an interactive preview:

```bash
quarto preview workshop.qmd
```

---

## 🔬 Analysis path

```text
SingleCellExperiment
        │
        ├── Quality control
        ├── Normalization
        ├── Highly variable genes
        ├── PCA
        ├── UMAP
        ├── Clustering
        ├── Marker genes
        └── Cell-type annotation
```

---

## 📚 Background

The workshop is inspired by the
[Orchestrating Single-Cell Analysis with Bioconductor (OSCA)](https://bioconductor.org/books/release/OSCA/)
book and the
[ISMB.OSCA](https://github.com/Bioconductor/ISMB.OSCA)
tutorial materials.

---

## 👨‍🏫 Instructor

**Dario Righelli**  
University of Padova
