# R: From Zero to Research Data

> An all-in-one, self-contained workshop guide for absolute beginners — taking you from zero coding experience to real research data analysis and publication-grade graphics.

Welcome to the **R Workshop**. This guide acts as a structured curriculum, a quick-start installation manual, and a hands-on reference a student can return to whenever they need a refresher.

![status](https://img.shields.io/badge/status-complete-brightgreen) ![language](https://img.shields.io/badge/language-R-blue) ![level](https://img.shields.io/badge/level-beginner--friendly-yellow) ![license](https://img.shields.io/badge/license-open--source-lightgrey)

---

## Table of Contents

1. [A Brief History of R](#1-a-brief-history-of-r)
2. [Why R? (And Why Not Python?)](#2-why-r-and-why-not-python)
3. [Alternative Tools](#3-alternative-tools)
4. [Installation](#4-installation)
5. [R Fundamentals](#5-r-fundamentals)
6. [Importing and Managing Data](#6-importing-and-managing-data)
7. [Data Visualization with ggplot2](#7-data-visualization-with-ggplot2)
8. [Next Steps](#8-next-steps)

---

## 1. A Brief History of R

| Year | Milestone |
|---|---|
| 1976 | The **S language** is created by John Chambers and colleagues at Bell Labs — the same institution behind Unix and C. S was designed to make statistical computing an interactive experience. |
| 1993 | **R** is created by **Ross Ihaka** and **Robert Gentleman**, two professors at the University of Auckland, New Zealand, as a free, open-source implementation of S for their statistics teaching labs. The name derives from the authors' shared first initial. |
| Present | R is maintained by the **R Core Team** and a large open-source community, and serves as the primary computational engine behind much of modern biostatistics, bioinformatics, and quantitative research. |

---

## 2. Why R? (And Why Not Python?)

A common question among new researchers is whether to learn Python or R. In practice, the two are complementary tools rather than competitors, each suited to different stages of a research workflow.

### R vs. Python: A Research Comparison

| Feature | R | Python |
|---|---|---|
| Original purpose | Designed by statisticians for data analysis and graphics | Designed as a general-purpose programming language |
| Data structures | Vectors, matrices, and data frames are built into base R | Requires external libraries (pandas, NumPy) for equivalent structures |
| Biological research ecosystem | Bioconductor is the global standard for genomics, RNA-Seq, and single-cell analysis | Biopython exists but is less dominant in biostatistics |
| Publication graphics | ggplot2 (Grammar of Graphics) produces publication-ready plots with minimal code | matplotlib and seaborn are powerful but typically require more code to format |
| AI and deep learning | Adequate for classical statistical machine learning | The dominant choice for deep learning (PyTorch, TensorFlow) |

### When to Use R
1. **Biostatistics and clinical trials** — survival analysis, ANOVA, linear mixed-effects models, and treatment-response modeling.
2. **Genomics and bioinformatics** — differential expression analysis (RNA-Seq), sequence mapping, and single-cell RNA analysis via Bioconductor.
3. **Publication-ready figures** — multi-panel scatterplots, boxplots, and heatmaps formatted for journal submission.
4. **Rapid exploratory data analysis** — summarizing a clean `.csv` dataset in a handful of lines of code.

### When to Use Python
1. **Machine learning and deep learning** — e.g., convolutional neural networks for image classification.
2. **Web scraping and software development** — extracting data from the web or building standalone applications.
3. **Large-scale data engineering** — pipelines that integrate with web services, servers, and databases.

---

## 3. Alternative Tools

| Tool | Strengths | Limitations |
|---|---|---|
| **MATLAB** | Excellent for differential equations, signal processing, and matrix algebra | Proprietary and expensive |
| **Julia** | Very fast, modern, open-source; strong for numerical simulation | Smaller package ecosystem than R |
| **SAS / Stata** | Still standard in some legacy clinical and economics settings | Rigid, costly, and less flexible for dynamic data wrangling |

---

## 4. Installation

### Step 1: Install R
1. Visit [CRAN](https://cran.r-project.org/) (The Comprehensive R Archive Network).
2. Select your operating system (Windows, macOS, or Linux) and download the latest release.
3. Run the installer, accepting the default settings.

### Step 2: Install RStudio
RStudio is the standard integrated development environment (IDE) for R, providing a console, script editor, plotting pane, and environment viewer in one interface.

1. Visit [posit.co/download/rstudio-desktop](https://posit.co/download/rstudio-desktop/).
2. Download the free **RStudio Desktop** edition for your operating system.
3. Install it — RStudio will automatically detect your existing R installation.

### Step 3 (Optional): Install the R Extension for a Code Editor
If you prefer to work in an existing code editor rather than RStudio, most editors support R through an extension. This does **not** install R itself — R must already be installed as in Step 1.

1. Open your code editor's Extensions panel.
2. Search for **"R"** (published by REditorSupport) and install it.
3. Optionally, install **R Debugger** for step-through debugging.
4. In the R console, run `install.packages("languageserver")` so the extension can provide autocomplete, linting, and hover documentation.

---

## 5. R Fundamentals

Once installed, open RStudio and familiarize yourself with the core building blocks of the language.

### Variables and Assignment
```r
x <- 42          # preferred assignment operator in R
y = 10            # also valid, less idiomatic
name <- "Ada"
```

### Core Data Types
| Type | Example |
|---|---|
| Numeric | `3.14` |
| Integer | `2L` |
| Character | `"research"` |
| Logical | `TRUE`, `FALSE` |
| Factor | Categorical variable, e.g. `factor(c("low","high"))` |

### Core Data Structures
| Structure | Description |
|---|---|
| **Vector** | Ordered collection of values of the same type: `c(1, 2, 3)` |
| **Matrix** | Two-dimensional array of a single type |
| **List** | Ordered collection of mixed types or structures |
| **Data Frame** | Table-like structure (rows and columns) — the primary structure for research datasets |

### Basic Functions
```r
mean(c(4, 8, 15, 16, 23))
summary(iris)
str(iris)
```

---

## 6. Importing and Managing Data

R can read data from spreadsheets, text files, and databases.

```r
data <- read.csv("study_data.csv")   # base R
library(readr)
data <- read_csv("study_data.csv")   # tidyverse, faster and more consistent
```

The **tidyverse** — a collection of packages including `dplyr`, `tidyr`, and `readr` — is the modern standard for cleaning and transforming research data:

```r
library(dplyr)

data %>%
  filter(age > 18) %>%
  group_by(treatment_group) %>%
  summarise(mean_response = mean(response, na.rm = TRUE))
```

---

## 7. Data Visualization with ggplot2

`ggplot2` implements the "Grammar of Graphics," building plots in layers.

```r
library(ggplot2)

ggplot(data, aes(x = treatment_group, y = response)) +
  geom_boxplot() +
  labs(
    title = "Response by Treatment Group",
    x = "Treatment Group",
    y = "Response"
  ) +
  theme_minimal()
```

This layered approach makes it straightforward to move from a simple exploratory plot to a polished, publication-ready figure.

---

## 8. Next Steps

* Explore **Bioconductor** (bioconductor.org) if your work involves genomics or omics data.
* Learn **R Markdown** or **Quarto** to combine code, output, and narrative into a single reproducible report.
* Practice with a public dataset (e.g., `iris`, `mtcars`, or a dataset from your own field) to reinforce the fundamentals above.
* Consult the official documentation via `?function_name` in the R console for any function you encounter.

---

*End of guide.*