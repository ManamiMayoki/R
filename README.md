# R: From Zero to Research Data

Welcome to the **R Workshop**. This repository is a self-contained, step-by-step master guide designed to take complete beginners—students who have never written a single line of code—to performing real research data analysis and creating publication-grade visual graphics.

---

## 1. A Brief History of R

* **1976 (The Ancestor - S Language):** Created by **John Chambers** and his team at Bell Labs (the same place that created Unix and C). **S** was designed to turn statistical calculation into an interactive programming experience.
* **1993 (The Birth of R):** Two professors at the University of Auckland, New Zealand—**Ross Ihaka** and **Robert Gentleman**—wanted a free, open-source tool for their statistical teaching labs. They implemented an open-source dialect of S, naming it **R** after their first initials.
* **Present Day:** Managed by the *R Core Team* and supported by a massive global open-source community, R is the primary computational engine behind modern biostatistics, bioinformatics, and quantitative data modeling.

---

## 2. Why R? (And Why Not Python?)

Students often ask: *"Should I learn Python or R?"*

The short answer is: **They are tools in a toolbox, not rival sports teams.**

### R vs. Python: Research Comparison

| Feature | R | Python |
|---|---|---|
| Original Purpose | Designed by statisticians for data analysis & graphics. | Designed as a general-purpose programming language. |
| Data Structures | Vectors, matrices, and data tables are built directly into base R. | Requires external libraries (pandas, numpy) to handle data tables. |
| Biological Research Ecosystem | Bioconductor is the global standard for genomics, RNA-Seq, and single-cell analysis. | Biopython exists, but is less dominant in biostatistics. |
| Publication Graphics | ggplot2 (Grammar of Graphics) yields publication-ready plots effortlessly. | matplotlib & seaborn are powerful, but take more code to format. |
| Artificial Intelligence & Deep Learning | Good for basic statistical ML. | The undisputed king of Deep Learning/Neural Nets (PyTorch/TF). |

### When to use R:
1. **Biostatistics & Clinical Trials:** Analyzing survival curves, ANOVA, linear mixed-effects models, and drug treatment responses.
2. **Genomics & Bioinformatics:** Differential expression analysis (RNA-Seq), DNA sequence mapping, and single-cell RNA analysis via Bioconductor.
3. **Publication-Ready Figures:** When you need clean, multi-paneled scatterplots, boxplots, or heatmaps formatted for journal submission.
4. **Quick Exploratory Data Analysis (EDA):** When you receive a clean spreadsheet (`.csv`) and need summary stats in 3 lines of code.

### When to use Python:
1. **Machine Learning & Deep Learning:** Building image classification models (e.g., detecting tumors from X-rays via Convolutional Neural Networks).
2. **Web Scraping & Software Development:** Extracting raw data from websites or building standalone software applications.
3. **Large-Scale Data Engineering:** Pipeline building that integrates directly into web services, servers, and databases.

---

## 3. What About Other Alternatives?

* **MATLAB:** Outstanding for differential equations, signal processing, and matrix algebra. *Downside:* Expensive, closed-source proprietary software.
* **Julia:** Extremely fast, modern open-source language for scientific computing. Excellent for numerical simulations, though its package ecosystem is smaller than R's.
* **SAS / Stata:** Traditional tools still used in legacy clinical trials and economics. *Downside:* Rigid, expensive, and far less flexible than R for dynamic data wrangling.

---

## 4. Installation

### Install R
1. Go to [CRAN](https://cran.r-project.org/).
2. Choose your OS (Windows/Mac/Linux) and download the latest R installer.
3. Run the installer with default settings.

### Install RStudio
1. Go to [posit.co/download/rstudio-desktop](https://posit.co/download/rstudio-desktop/).
2. Download the free **RStudio Desktop** version for your OS.
3. Install it — RStudio automatically detects your R installation.

### Install the R Extension (for a code editor, not VS Code itself)
1. Open your existing code editor (e.g., VS Code).
2. Go to the **Extensions** panel.
3. Search for **"R"** (by REditorSupport) and click **Install**.
4. Also install **R Debugger** (optional, for step-through debugging).
5. In the terminal, run `install.packages("languageserver")` inside R so the extension can provide autocomplete and linting.

---