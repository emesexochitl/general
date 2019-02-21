#!/bin/bash


#input="circ_ref.csv"

while read l
do

    chr=`echo $l | awk -F"," '{print $1}'`

    start=`echo $l | awk -F"," '{print $2}'`

    end=`echo $l | awk -F"," '{print $3}'`
    
    echo "$chr-$start-$end" 


    
    extractseq -sequence ../../../Data/references/mapsplice_reference/${chr}.fa -region ${start}..${end} -separate -scircular1 -auto -outseq stdout >> ciri2_circ_bp.fa

done <circ_ref.csv

