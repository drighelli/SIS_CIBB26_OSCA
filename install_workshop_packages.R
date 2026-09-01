if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

packages <- c(
    "MouseGastrulationData",
    "BiocStyle",
    "SingleCellExperiment",
    "scuttle",
    "scater",
    "scran",
    "bluster",
    "patchwork",
    "EnsDb.Mmusculus.v79",
    "AnnotationDbi",
    "SingleR",
    "Polychrome",
    "knitr"
)

missing_packages <- packages[
    !vapply(packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
    BiocManager::install(
        missing_packages,
        ask = FALSE,
        update = FALSE
    )
} else {
    message("All required packages are already installed.")
}
