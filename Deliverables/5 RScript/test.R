#Count species
cst_div <- subset(cst_div, species_type!='Uncategorized')

species_type_count <- cst_div %>%
  count(Survey.Year, species_type)


pie_cst <- species_type_count %>%
  ggplot(aes(x="", y=n, fill=species_type)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start=0) +
  facet_wrap(~Survey.Year, ncol = 2)


#Creating new data set
  

cst_dedup <- subset(cst, cst$Survey.Year!=1937)
cst_dedup <- cst_dedup[,-c(1)]

cst_dedup <- cst[,-c(1)]
cst_dedup <- unique(cst_dedup)

res_type <- restoration %>%
  left_join(cst_dedup, by="Taxon")

res_type <- res_type[,-c(3,4)]

res_type <- na.omit(res_type)

mtcars %>% count(cyl)
