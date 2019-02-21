#!/usr/bin/python

import datetime

ori="maize_intronnum_AGPv3.txt"
ori_list=[]
with open(ori) as inputfile:
    for line in inputfile:
       ori_list.append(line.strip().split(' '))

ori1=[item[0] for item in ori_list]
ori2=[item[1] for item in ori_list]

deseq= "deseq2_dehydration_maize.txt"
deseq_list=[]
with open(deseq) as inputfile:
    for line in inputfile:
        deseq_list.append(line.strip().split('\t'))

deseq1=[item[0] for item in deseq_list]

output="maize_merge_dehyd.txt"

#print ori1[0], download1[0]

myfile= open(output, "w")

for i in xrange(0, len(ori_list)):
    for j in xrange(0, len(deseq_list)):
        if ori1[i] in deseq1[j]:
            myfile.write("%s_%s\t%s\t%s\n" % ("maize", "dehyd", deseq1[j], ori2[i]))

        else:
            continue

myfile.close()


