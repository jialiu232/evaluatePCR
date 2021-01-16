# Make figure of log(gene_copies) vs Ct values
makefig_logGenes_vs_ct <- function(inputDat){
  inputDat %>% 
    ggplot(aes(Ct, log10(Gene_copy))) +
    geom_smooth(method="lm", se=FALSE) +
    geom_point(aes(shape = Concentration_cate, color = Assay)) +
    labs(x = "CT value",
         y = "log10(Gene copies)")
}

