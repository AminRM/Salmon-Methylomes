#!/bin/bash
#SBATCH --job-name=OV_T1F1-trim
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mail-type=ALL
#SBATCH --mem=12gb
#SBATCH --time=24:00:00
#SBATCH --mail-user=amin.esmai@csiro.au
module load jemalloc
export OMP_NUM_THREADS=$SLURM_NTASKS_PER_NODE
module load trimgalore/0.4.4
module load python
trim_galore --paired --fastqc -q 30 /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HLL22CCXY_L3_1.fq.gz /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HLL22CCXY_L3_2.fq.gz
trim_galore --paired --fastqc -q 30 /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HLL22CCXY_L4_1.fq.gz /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HLL22CCXY_L4_2.fq.gz
trim_galore --paired --fastqc -q 30 /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HT3C7CCXY_L8_1.fq.gz /flush3/moh034/methylation/A_OV_T1F1/A_OV_T1F1_RDM04796_HT3C7CCXY_L8_2.fq.gz

