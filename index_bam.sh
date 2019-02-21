#!/bin/bash

for num in {31,35,36,38,45,46,47,48}
do

samtools sort mapsplice2.2_out_SRR21452${num}/alignments.bam  mapsplice2.2_out_SRR21452${num}/alignments_sort

samtools index mapsplice2.2_out_SRR21452${num}/alignments_sort.bam

echo "${num}"

samtools idxstats mapsplice2.2_out_SRR21452${num}/alignments_sort.bam | awk '{print $3}'

done

