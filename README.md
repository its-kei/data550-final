# data550-final

This READme file contains the instructions on how to build a report looking at the Census data on Alzheimer's Disease and Healthy Aging in the United States.

Use demographics.Rmd to explore the trends of Alzheimer's Disease and Dementia prevalence, demographic analysis of cognitive function, and looking at state comparisons of other aging health indicators. 

The figures.Rmd file will allow us to create tables and figures that explore the demographic data and trends. 


##Instructions for Generating Final report using Docker:

- Fork and clone the repository from Github to your local machine.
- Make sure the current working directory fo the terminal and console is aligned with the cloned repository location.
- Open the .Rdata from the project directory.
- To use the image from DockerHub, run docker pull itskei98/final:latest in the terminal.
- If you have a Mac operating sytem, run make report-mac in the terminal to generate the report.
- If you have a Windows operating system, run make report-windows in the terminal to generate the report.
- The final report will be generated in the working directory on your local machine.


## Instructions for Building the Report
- Fork and clone the repository from Github to your local machine.
- Make sure the current working directory fo the terminal and console is aligned with the cloned repository location.
- Open the .Rdata from the project directory.
- Run make project-image in the terminal to build the image locally.