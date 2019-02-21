#!/bin/bash

while read l
do

#hit=`grep "Mapped" tophat_out_${l}/align_summary.txt`
#echo $l $hit
echo $l
#echo tophat_out_${l}/${l}_accepted_hits.bam | transpose -t
#mv tophat_out_${l}/accepted_hits.bam tophat_out_${l}/${l}_accepted_hits.bam 

samtools sort tophat_out_${l}/${l}_accepted_hits.bam  tophat_out_${l}/${l}_accepted_hits_sorted

samtools index tophat_out_${l}/${l}_accepted_hits_sorted.bam

done < rna_list.txt
