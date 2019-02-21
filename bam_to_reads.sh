#!/bin/bash
#14-12-2015
#Transform BAM files to alignable reads.

WORKDIR="/media/emese/INTENSO/stephi_mrna_2015"

for num in S3 S4 S5 S6 S7 S8 S9

#for num in S1 S2
do

UNMAPPED=${WORKDIR}/tophat_out_${num}/unmapped.bam
OUTPUT=${WORKDIR}/ribo_trna_filtered_reads/${num}.fastq

cd ${WORKDIR}/


#echo "samtools bam2fq $UNMAPPED | seqtk seq - -A > ${num}.fa"
#samtools bam2fq $UNMAPPED | seqtk seq - -A > $OUTPUT

samtools bam2fq $UNMAPPED > $OUTPUT

date
done
