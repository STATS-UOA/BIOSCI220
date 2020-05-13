## data from https://www.lagardedenuit.com/wiki/index.php?title=Personnages_PoV
## make sure the appropriate file is in your working directory before attempting to read in the data
got <- read.csv("pov.csv")
head(got)
str(got)



## plot data
library(ggplot2)
## we'll have to rearramge the data for plotting
df <- reshape2::melt(got[,1:6])

ggplot(data = df,aes(x = Character, y = value, fill = variable)) +
    geom_bar(stat = "identity") + xlab("") +
    ylab("PoV chapters")  +
    scale_fill_brewer(palette = "Dark2",name = "Book") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))

### Scale data
data <- got[,2:6] ## the useful data
apply(data,2,var)
## scale data manually
data_scale <- apply(data,2,scale)
rownames(data) <- rownames(data_scale) <- got[,1]
pca_ds <- prcomp(data_scale, center = TRUE)

## or just do this directly in the prcomp command
pca <- prcomp(data, center = TRUE,scale = TRUE)
## Eigenvalues: represent the variance explained by each PC;
## we can use these to calculate the proportion of variance in the original data that each axis explains

##Variable loadings (eigenvectors): these reflect the weight that each
## variable has on a particular PC (can be thought of as the correlation between the
## PC and the original variable)

summary(pca)
str(pca)

## The PCA object contains the following information:
## The center point ($center), scaling ($scale), standard deviation($sdev) 
## of each principal component.
## The relationship (correlation etc) between the initial variables 
## and the principal components ($rotation)
pca$rotation
## The values of each sample in terms of the principal components ($x)
pca$x

## plot using base graphics
screeplot(pca)
biplot(pca, scale = 0)


## using ggplot2
library(ggfortify)
## Passing loadings = TRUE draws eigenvectors.
## shape = FALSE turns off pch
autoplot(pca,loadings = TRUE,loadings.label = TRUE, label = TRUE,
         shape = FALSE, label.size = 3,
         loadings.colour = "grey",scale = 0) 
