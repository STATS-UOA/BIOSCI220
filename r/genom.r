## Data download and prep for genomics multivatiate BIOSCI220
## taken directly from https://bioconductor.org/packages/release/bioc/vignettes/PCAtools/inst/doc/PCAtools.html#quick-start
## if (!requireNamespace('BiocManager', quietly = TRUE))
##     install.packages('BiocManager')
## devtools::install_github('kevinblighe/PCAtools')
## BiocManager::install("Biobase")
## BiocManager::install("GEOquery")
library(PCAtools)
library(Biobase)
library(GEOquery)
## load series and platform data from GEO
gset <- getGEO('GSE2990', GSEMatrix = TRUE, getGPL = FALSE)
x <- exprs(gset[[1]])

## remove Affymetrix control probes
x <- x[-grep('^AFFX', rownames(x)),]

## extract information of interest from the phenotype data (pdata)
idx <- which(colnames(pData(gset[[1]])) %in%
             c('age:ch1', 'distant rfs:ch1', 'er:ch1',
               'ggi:ch1', 'grade:ch1', 'size:ch1',
               'time rfs:ch1'))

metadata <- data.frame(pData(gset[[1]])[,idx],
                       row.names = rownames(pData(gset[[1]])))

## tidy column names
colnames(metadata) <- c('Age', 'Distant.RFS', 'ER', 'GGI', 'Grade',
                        'Size', 'Time.RFS')

## prepare certain phenotypes
metadata$Age <- as.numeric(gsub('^KJ', NA, metadata$Age))
metadata$Distant.RFS <- factor(metadata$Distant.RFS, levels=c(0,1))
metadata$ER <- factor(gsub('\\?', NA, metadata$ER), levels=c(0,1))
metadata$ER <- factor(ifelse(metadata$ER == 1, 'ER+', 'ER-'), levels = c('ER-', 'ER+'))
metadata$GGI <- as.numeric(metadata$GGI)
metadata$Grade <- factor(gsub('\\?', NA, metadata$Grade), levels=c(1,2,3))
metadata$Grade <- gsub(1, 'Grade 1', gsub(2, 'Grade 2', gsub(3, 'Grade 3', metadata$Grade)))
metadata$Grade <- factor(metadata$Grade, levels = c('Grade 1', 'Grade 2', 'Grade 3'))
metadata$Size <- as.numeric(metadata$Size)
metadata$Time.RFS <- as.numeric(gsub('^KJX|^KJ', NA, metadata$Time.RFS))

## remove samples from the pdata that have any NA value
discard <- apply(metadata, 1, function(x) any(is.na(x)))

metadata <- metadata[!discard,]

## filter the expression data to match the samples in our pdata
x <- x[,which(colnames(x) %in% rownames(metadata))]

## check that sample names match exactly between pdata and expression data 
all(colnames(x) == rownames(metadata))

write.csv(x,file = "../data/genomics.csv",row.names = FALSE)
write.csv(metadata,file = "../data/metadata.csv")
