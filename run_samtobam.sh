#!/bin/bash

while read l
do

echo "$l"

samtools view -uS aln-pe_${l}.sam | samtools sort - aln-pe_corsort${l} 
done < sra_phos_list.txt

