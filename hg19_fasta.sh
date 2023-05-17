#!/bin/bash
#job_name:
#SBATCH --job-name='hg19_fasta_creation'
#
#Account:
#SBATCH --account=pc_dsdisc
#
#Partition:
#SBATCH --partition=savio2_htc
#
#Wall Clock
#SBATCH --time=0:10:00
#
#SBATCH --mail-type=END,FAIL
#
#SBATCH --mail-user=tanyasjain@berkeley.edu
#
#Commands:
module load python/3.7
module load sra-tools/2.11.2

cd staging/hg19fa
wget hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/chromFa.tar.gz
tar -zxvf chromFa.tar.gz
cat chr*.fa > hg19.fa

