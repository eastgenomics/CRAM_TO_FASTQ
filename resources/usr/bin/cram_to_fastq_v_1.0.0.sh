#!/bin/bash
##################
#Title: CRAM_TO_FASTQ Conversion
#Discription: Convert files from CRAM=>FASTQ
#Version: 1.0.0 
#Author: Dr. Ravi P. More (Research Associate, Department of Paediatrics, University of Cambridge, Email:Ravi.More@addenbrookes.nhs.ac.uk)
#Date: 25-10-2021 
#USAGE: cram_to_fastq_v_1.0.0.sh -i <CRAM_FILE> -1 <FORWARD_OUTPUT> -1 <REVERSE_OUTPUT>
#Example:./cram_to_fastq_v_1.0.0.sh -i /home/dnanexus/NA12878-GM20-02783-FHC-EGG3_S24_L001.unaligned.bam.cram -o /home/dnanexus/NA12878-GM20-02783-FHC-EGG3_markdup

##################

while getopts i: flag
do
    case "${flag}" in
        i) Input_cram=${OPTARG};;  # NA12878-GM20-02783-FHC-EGG3_markdup.cram
    esac
done

echo "Input file name: $Input_cram";

#Option=CRAM_TO_FASTQ

       	echo -e "CRAM_TO_FASTQ conversion running..."

        /home/dnanexus/samtools-1.13/bin/samtools fastq $Input_cram -1 $Input_cram.R1.fastq.gz -2 $Input_cram.R2.fastq.gz

