#!/bin/bash

ref="dbr-1_lariats_sort.bedgraph"
out="lariat"

bedtools reldist -a RnaseR_polyAmin_loose_chr.bed -b ${ref} > reldist_${out}_circ.txt
bedtools reldist -a ensembl34.bed -b ${ref} > reldist_${out}_ensembl.txt
bedtools reldist -a merge_simulated_circs_clean_chr.bed -b ${ref}  > reldist_${out}_sim.txt
bedtools reldist -a RnaseR_polyAmin_loose_chr_exon.bed -b ${ref} > reldist_${out}_exon.txt
bedtools reldist -a RnaseR_polyAmin_loose_chr_intron.bed -b ${ref} > reldist_${out}_intron.txt
bedtools reldist -a RnaseR_polyAmin_loose_chr_intergenic.bed -b ${ref} > reldist_${out}_intergenic.txt
