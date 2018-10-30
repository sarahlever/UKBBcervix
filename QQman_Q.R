#QQ-plot

setwd("/UKBB_HD/UKBB_results/Plink_logistic")
dat <- read.table("plink_assoc_chr17_6144.txt", header=T)
head(dat)
library(data.table)
library(qqman)

png("qq-plotplinkchr17.png")
qq(dat$P,main ="Associations to cervical cancer in UKBioBank")
dev.off()