# Get the dataframe for the top n best primers for the given Sample gene
getDat_gene_2_topnPrim <- function(dat, startSample, top_n){
  topnDat <- dat %>% 
    filter(startsWith(Sample, startSample)) %>% 
    group_by(Sample) %>% 
    arrange(Ct, .by_group = TRUE) %>% 
    slice_head(n=top_n) 
  return(topnDat)
}
