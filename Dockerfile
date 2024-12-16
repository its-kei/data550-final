FROM rocker/rstudio as base

RUN apt-get update && apt-get install -y pandoc

RUN mkdir /home/rstudio/project
WORKDIR /home/rstudio/project

COPY .Rprofile .
COPY renv.lock
RUN mkdir -p renv
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN mkdir renv/.cache
ENV RENV_PATHS_CACHE=renv/.cache

RUN R -e "renv::restore()"

RUN mkdir data
RUN mkdir code
RUN mkdir output

COPY data data
COPY code code
COPY Makefile.
COPY report.Rmd .

RUN mkdir report

CMD make && mv report.html report