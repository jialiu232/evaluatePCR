## Basic introduction

The functions in this R package analyze the PCR results data and visualize log(gene_copies) versus Ct values. More functions may be developed based on research needs in the future.


## Pre-requisite

### Input file

- The ht-PCR results file has information and headers as shown below ("|" are just separaters here for easier understanding):

Sample  | Assay |	Chamber	| SampleID  |	SampleType  |	rConc |	AssayID |	EvaGreenType  |	Ct  |	CtQuality |	Call  |	Threshold |	Tm.InRange  |	Tm.OutRange |	PeakRatio

- 

### R packages

- Install these R packages if you have not yet:
  
  `install.packages("dplyr")`  
  `install.packages("tidyverse")`  
  `install.packages("ggplot2")`  
  
- Make the contents in these R packages available to use in your current R session by running:
  
  `library(dplyr)`  
  `library(tidyverse)`  
  `library(ggplot2)`  


## Installation
  
You will need `devtools` package to install `evaluatePCR` package in your R/Rstudio:

  `install.packages("devtools")`  
  `library(devtools)`  
  `devtools::install_github("jialiu232/evaluatePCR")`  
  `library(evaluatePCR)`  
  

## Workflow for analyzing standard sample gene

### Step 1: Read in the data

- Locate at the directory with your input PCR restult dataset:

  `setwd("/path/to/my/file/")`
  
- Read in your PCR result file and save it to a variable. You can use the code below for `.xlsx` file:

  `f <- readxl::read_excel("myFile.xlsx")`
  
### Step 2: Get subset of data with top n primer pairs

Get the subset of data that contains rows with given standard sample gene and the top n primer pairs (with lowest Ct values) that can amplify the standard gene by:

  `getDat_gene_2_topnPrim(dat, startSample, top_n)`  

For example, get and view the sub-dataset of rows with the top 10 primers that targets the amoA standard gene by:

  `getDat_gene_2_topnPrim(f, "amoA", 10) %>% View()`
  

### Step 3: Get data subset with standard sample gene and its primer pair

Get the subset of data that contains rows with given standard sample gene and the primer pair designed for this standard gene:

  `getDat_stGene_2_stPrim(dat, startSample, startAssay)`  

It is recommended to save the resulted dataframe into a variable for the next step. For example, get the sub-dataset of rows with standard sample gene that starts with "amoA" and the primer pair "amoA.011" and save it to `test011`:

  `test011 <- getDat_stGene_2_stPrim(f, "amoA", "amoA.011")`   
  `test011 %>% View()`

### Step 4: Filter out BIG Ct values
  
The dataset generated from the last step should include rows of given standard gene at 6 dilution folds. The Ct values of standard gene at high dilution fold (e.g., 6 dilution fold; low concentration) maybe extremely large, that may not fit in the log(gene_copies) vs Ct value figure. You may want to temporarily exclude rows at this high dilution fold before visualizing the data:

`exclude_big_ct(stData, dilute_fold)`

It is recommended to save the result dataframe to a variable for the next step. For example, exclude the rows of amoA standard gene at dilution fold 6:

`test011_filt <- exclude_big_ct(test011, "^-6")`  
`test011_filt %>% View()`

### Step 5: Visualization

Make a figure of log(gene copies) vs Ct values with sub-dataset generated from **step3** or **step4** by:

`makefig_logGenes_vs_ct(df_filt)`  

For example,  
`makefig_logGenes_vs_ct(test011_filt)`
   

## Summary

Finally, you've reached the end for now. I will keep updating more functions evaluating PCR results if there are more tasks to do in the lab.
