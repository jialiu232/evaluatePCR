# Get standard gene and the primer pair designed fro the standard gene
getDat_stGene_2_stPrim <- function(dat, startSample, startAssay){
  stData <- dat %>% 
    filter(startsWith(Sample, startSample)) %>% 
    filter(startsWith(Assay, startAssay)) %>% 
    mutate(Gene_copy =
             case_when(grepl("^-1", Sample, fixed = TRUE) ~ 1.10E+06,
                       grepl("^-2", Sample, fixed = TRUE) ~ 1.10E+05,
                       grepl("^-3", Sample, fixed = TRUE) ~ 1.10E+04,
                       grepl("^-4", Sample, fixed = TRUE) ~ 1.10E+03,
                       grepl("^-5", Sample, fixed = TRUE) ~ 1.10E+02,
                       grepl("^-6", Sample, fixed = TRUE) ~ 1.10E+01),
           Concentration_cate =
             case_when(grepl("^-1", Sample, fixed = TRUE) ~ "1st",
                       grepl("^-2", Sample, fixed = TRUE) ~ "2nd",
                       grepl("^-3", Sample, fixed = TRUE) ~ "3rd",
                       grepl("^-4", Sample, fixed = TRUE) ~ "4th",
                       grepl("^-5", Sample, fixed = TRUE) ~ "5th",
                       grepl("^-6", Sample, fixed = TRUE) ~ "6th"))
  return(stData)
}

