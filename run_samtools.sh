#!/bin/bash
while read l
do

echo "$l"

samtools index aln-pe_corsort${l}.bam

done < sra_phos_list.txt
