
setwd("/UKBB_HD/UKBB_results/Plink_logistic")
dat <- read.table("plink_assoc_chr6_gen.txt", header=T)
head(dat)

library(qqman)

png("qq-plotplinkchr6.png")
qq(dat$P,main ="Associations to cervical cancer in UKBioBank")
dev.off()
dat=dat[!is.na(dat$CHR),]
dat=dat[!is.na(dat$BP),]
dat=dat[!is.na(dat$P), ]

png("manhatten_chr6_plink.png")
manhattan(dat,chr="CHR",bp="BP",p="P",main="Associations to cervical cancer in UKBioBank")
dev.off()