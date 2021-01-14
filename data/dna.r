library(tidyverse)
dna <- read_csv("DNA_forensic.csv")
GGally::ggpairs(dna)
