FROM rocker/r-ubuntu as base

RUN apt-get update && apt-get install -y pandoc
WORKDIR /project

# Create a folder for renv and copy renv-associated files
RUN mkdir -p renv
COPY renv.lock renv.lock
COPY renv/ /project/renv/

# change the default location of the renv cache
RUN mkdir renv/.cache
ENV RENV_PATHS_CACHE renv/.cache


# Modify Dockerfile for secon stage of multi-stage build
FROM rocker/r-ubuntu

WORKDIR /project
COPY --from=base /project .

FROM base as final
ENV WHICH_CONFIG default

# Modify Dockerfile
COPY code/ /project/code/
COPY Makefile /project/Makefile
COPY report.Rmd /project/report.Rmd

RUN mkdir -p /project/code /project/output /project/data /project/report
COPY data/breast_cancer.csv /project/data/breast_cancer.csv

ENTRYPOINT ["Rscript", "/project/code/render_report.R"]

CMD ["cp", "/project/output/report.pdf", "/project/report/report.Rmd"]