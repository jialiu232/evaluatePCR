## Sometimes the Ct-values corresponding to low concentrations (e.g., -6, or -5) are very large,
# that may not fit well in the figure. You may want to exclude these values to make a partial figure.
# You can do this:
exclude_big_ct <- function(stData, dilute_fold){
  outData <- stData %>% 
    filter(!grepl(dilute_fold, Sample, fixed = TRUE))
  return(outData)
}

