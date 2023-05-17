#!/bin/bash
#job_name:
#SBATCH --job-name='map SRR1505692'
#
#Account:
#SBATCH --account=fc_xenopus
#
#Partition:
#SBATCH --partition=savio2_bigmem
#
#Wall Clock
#SBATCH --time=20:00:00
#
#SBATCH --mail-type=END,FAIL
#
#SBATCH --mail-user=tanyasjain@berkeley.edu
#
#
#Commands:
module load python/3.7
module load sra-tools/2.11.2
module load bwa-mem2/2.2.1

bwa-mem2 mem -R '@RG\tID:C30H6AC.1\tSM:SRR1505692\tPL:ILLUMINA' hg19.fa SRR1505692_1.fastq SRR1505692_2.fastq > SRR1505692_6hr.sam
