#!/bin/bash

while read l
do

echo "$l"

bowtie2 -x arabidopsis_thaliana_trna_ribo_bowtie2 -1 ${l}_trimmed_1.fastq.gz -2 ${l}_2.fastq.gz -S ${l}_rt.sam --un-conc-gz ${l}_rt_filtered_%.fq.gz 2> ${l}_bowtie2.txt

rm ${l}_rt.sam

done < sra_phos_list.txt
