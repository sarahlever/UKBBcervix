#!/bin/bash
# -N cervix
#PBS -l walltime=24:00:00
#PBS  -l select=1:ncpus=12:mem=9600mb

module load plink


plink --assoc --bed /groupvol/med-bio/uk-biobank-2017/release_12032018/converted_data/imp_bgen1.1_plink/ukb_imp_chr17_v3.bed \
--bim /groupvol/med-bio/uk-biobank-2017/release_12032018/converted_data/imp_bgen1.1_plink/ukb_imp_chr17_v3.bim \
--fam /groupvol/med-bio/ccuk-biobank/Plink_logistic/genetic_files/FAMimp.fam \
--out plink_assoc_chr17_imp


