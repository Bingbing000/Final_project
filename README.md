# Final_project
## Introductoin
This is a Breast cancer Wisconsin (original) dataset contains real data of 699 observations with independent variables。We are going to perform a logistic regression analysis on a dataset to classify tumors as malignant and benign. The variable I will be predicting can have two values: 0 or 1.

# Installation
To set up the R package environment for this project, run the following command from the project directory:
- Final Report You can choose whether or not to include code in the final report.
- To exclude code and provide a cleaner view for collaborators, open the file "render_report.R" and set the parameter: production: TRUE in the YAML header This will generate a report without code.
- To include code so that the entire report can be thoroughly examined, open the file "render_report.R" and set params: production: FALSE in the YAML header.This will generate a report with the code included.

# How to create the final report
## Clean Data
To clean the initial dataset and prepare it for further analysis, use: 
- make clean_data/clean_data.rds

## Generate Tables and Plots
Generate detailed analytical outputs and visualizations by executing the commands below:
- make output/make_table.rds
- make output/heat_map.png
- make output/ct.png
- make output/bn.png
- make output/bc.png
- make output/ma.png
- make output/nn.png
- make output/um.png

## Building the Report
To compile the final report into an HTML format:
- make report.html
  
## Building the Docker Image

To build the Docker image, ensure that you have Docker installed on your machine. Then, navigate to the project directory containing the Dockerfile and execute the following command:

```bash
docker build -t your-image-name .
- Replace your-image-name with the desired name for your Docker image. This command will build the Docker image using the Dockerfile located in the current directory (.).
- Once the build process is complete, you can proceed to run the Docker container using the instructions provided in the previous section.

## Running the Docker Container to Compile Report
To compile the report using a Docker container, execute the following command:
- make run-container
- This command will run a Docker container with the project directory mounted, allowing the compiled report to be saved to the "report" directory in your project folder.

## Final report using git bash terminal
- Set the the project directory in the bash terminal using the cd command
- Type make into the terminal to generate the report.html product
- Final report using the RStudio console
- Set the working directory to your local folder using the setwd() command
- set the R environment using renv::restore() command
- You can run the R files in Code section individually.
- Tables and plots will be generated in the 'output' folder, while the final report will be found in the main folder.

# Conclusion
This README provides a comprehensive guide to setting up and running the project, ensuring that anyone can replicate the analysis and generate the report with minimal setup.
- Replace `final` with the name of your Docker image.
This will update your Makefile with the target to run the Docker container and compile the report and provide clear instructions in your README.md on how to use this target.

