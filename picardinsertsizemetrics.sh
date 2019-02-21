#!/bin/bash

while read l
do

echo "$l"

testname=`echo $l | awk '{print $1}'`
testtype=`echo $l | awk '{print $2}'`

#bowtie2-build arabidopsis_thaliana_trna_ribo.fa arabidopsis_thaliana_trna_ribo_bowtie

#bowtie2 -x ../../../references/arabidopsis_thaliana_trna_ribo_bowtie2 --fr -1 ../../raw_reads/${l}.R1.l6.r0056.fastq.gz -2 ../../raw_reads/${l}.R2.l6.r0056.fastq.gz\
# -S ${l}_rt.sam --un-conc-gz  ${l}_rt_filtered_%.fq.gz 2>  ${l}_bowtie2.txt
#rm ${l}_rt.sam

#tophat2 -p 10 -i 10 -I 1000 --library-type fr-secondstrand\
# -G ../../../references/Arabidopsis_thaliana.TAIR10.34.gtf ../../../references/Arabidopsis_thaliana.TAIR10.dna.toplevel.bowtie2\
# ../ribo_trna_filtering/${l}_rt_filtered_1.fq.gz ../ribo_trna_filtering/${l}_rt_filtered_2.fq.gz
#mv tophat_out/ tophat_out_${l}/

picard-tools CollectInsertSizeMetrics H=${l}.pdf I=aln-pe_cosort_${testname}_${testtype}.bam AS=false O=${l}_insertmetrics.txt


done < circlist.txt
