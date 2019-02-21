#!/bin/bash

while read l
do

echo "$l"

cutadapt  -a AGATCGG -A AGATCGG -o ${l}_trimmed_1.fastq.gz -p ${l}_trimmed_2.fastq.gz ${l}_1.fastq.gz ${l}_2.fastq.gz > ${l}_report.txt

done < sra_phos_list.txt
