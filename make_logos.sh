#!/bin/bash

sample="MeJa"

cat average_circ_feature_len_num_RnaseR_polyAmin_ss.txt | awk -F"\t" -v var="$sample" '{if (($2==var)&&($18~"[A-Z]")) print ">"$1"_"$2"\t"$18}' > ${sample}_upup.clustalw
cat average_circ_feature_len_num_RnaseR_polyAmin_ss.txt | awk -F"\t" -v var="$sample" '{if (($2==var)&&($19~"[A-Z]")) print ">"$1"_"$2"\t"$19}' > ${sample}_updown.clustalw
cat average_circ_feature_len_num_RnaseR_polyAmin_ss.txt | awk -F"\t" -v var="$sample" '{if (($2==var)&&($20~"[A-Z]")) print ">"$1"_"$2"\t"$20}' > ${sample}_downup.clustalw
cat average_circ_feature_len_num_RnaseR_polyAmin_ss.txt | awk -F"\t" -v var="$sample" '{if (($2==var)&&($21~"[A-Z]")) print ">"$1"_"$2"\t"$21}' > ${sample}_downdown.clustalw

weblogo -D clustal -A dna -a ATGC -c classic -s large --errorbars YES -F pdf < ${sample}_upup.clustalw > ${sample}_upup.pdf
weblogo -D clustal -A dna -a ATGC -c classic -s large --errorbars YES -F pdf < ${sample}_updown.clustalw > ${sample}_updown.pdf
weblogo -D clustal -A dna -a ATGC -c classic -s large --errorbars YES  -F pdf < ${sample}_downup.clustalw > ${sample}_downup.pdf
weblogo -D clustal -A dna -a ATGC -c classic -s large --errorbars YES -F pdf < ${sample}_downdown.clustalw > ${sample}_downdown.pdf


pdfjam  ${sample}_upup.pdf ${sample}_updown.pdf ${sample}_downup.pdf ${sample}_downdown.pdf --nup 2x2 --landscape --outfile ${sample}_anchor_ss.pdf

