2 + 2
#creating variables
age <-25
# evaluating varialbe
age
# variable nameing conventition
gene_expression <- 30
gene_expression
?sd
#install and load packages
install.packages("tidyverse")
library(tidyverse)

# install bioconductor
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.23")
#advanced package handaling
install.packages("pak")
#install packages using pak
pak::pkg_install("DESeq2")


