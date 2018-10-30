#QQ-plot

setwd("/UKBB_HD/UKBB_results/Plink_logistic")
install.packages('CollapsABEL')

dat <- readPlinkOut("/UKBB_HD/UKBB_results/Plink_logistic/plink_assoc_chr17_imp.assoc")
head(dat)
library(qqman)

png("qq-plotimpchr17.png")
qq(dat$P,main ="Associations to Cervical Cancer and CIN3 in UKBioBank")
dev.off()
dat=dat[!is.na(dat$CHR),]
dat=dat[!is.na(dat$BP),]
dat=dat[!is.na(dat$P), ]

png("manhattan_chr17_imp.png")
manhattan(dat,chr="CHR",bp="BP",p="P",main="Associations to Cervical Cancer and CIN3 in UKBioBank")
dev.off()