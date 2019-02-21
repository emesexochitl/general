#!/bin/bash

while read l
do

echo "$l"

tophat2 -p 10 -i 10 -I 1000 -G Zea_mays.AGPv4.32.gtf Zea_mays.AGPv4.dna.toplevel ${l}_rt_filtered_1.fq.gz ${l}_rt_filtered_2.fq.gz
mv tophat_out/ tophat_out_${l}

done < SRR3039754.txt
