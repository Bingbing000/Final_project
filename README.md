---

# Final Project Report

## Overview

This repository contains all the necessary components for generating the Final Project Report. The report analyzes a dataset, presenting key findings through tables and figures. This README outlines how to generate the final report and provides insights into the contents of the report, including where to find the code for creating required tables and figures.

## Contents

- **Final_Project.Rmd**: R Markdown file that contains the analysis and code to generate the final report. This includes data cleaning, analysis, and visualization.
- **report.Rmd**: A detailed report generated from `Final_Project.Rmd`, presenting the analysis findings, including tables and figures.
- **Makefile**: A make utility to automate the report generation process. It defines how to generate the final report from `Final_Project.Rmd`.
- **code/**: This directory contains individual scripts for various parts of the analysis, including data cleaning (`clean_data.R`), data visualization (`heat_map.R`, `make_table.R`), and other analytical tasks.
- **data/**: Raw and processed data files.
- **output/**: Generated reports, tables, and figures are saved here, including the final report in HTML or PDF format.

## Generating the Final Report

To generate the final report, ensure you have `make` installed on your system and run the following command from the root of this repository:

```sh
make all
```

This command utilizes the `Makefile` to process `Final_Project.Rmd`, executing the code and rendering the final report as `report.html` or `report.pdf` in the `output/` directory.

## Code for Required Table and Figure

- **Required Table**: The code to create the required table is located in `code/make_table.R`. This script processes the data and generates a summary table, which is included in the final report.
- **Required Figure**: The code for creating the required figure is found in `code/heat_map.R`. This script visualizes the data as a heatmap, also included in the final report.

For more detailed instructions on running individual scripts or analyzing specific parts of the dataset, refer to the comments and documentation within each R script in the `code/` directory.

---
