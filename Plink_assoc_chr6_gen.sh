#!/bin/bash
# -N cervix
#PBS -l walltime=24:00:00
#PBS  -l select=1:ncpus=12:mem=9600mb

module load plink

plink --assoc --bed /groupvol/med-bio/uk-biobank-2017/release_12032018/original_data/ukb_cal_chr6_v2.bed \
--bim /groupvol/med-bio/uk-biobank-2017/release_12032018/original_data/ukb_snp_chr6_v2.bim \
--fam /groupvol/med-bio/ccuk-biobank/plinklogistic/genetic_files/ukb21146_cal_chr17_v2_s488363.fam \
--pheno /groupvol/med-bio/ccuk-biobank/plinklogistic/pheno/plink_pheno2.txt

