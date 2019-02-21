
#!/usr/bin/python

import datetime
import operator
import math
import scipy
from scipy import stats
from numpy import *
import os
from Bio import SeqIO
import pandas as pd

clustalw_file = "downdown_circ.clustalw"
#ref_file = "test.txt"
clustalw_list = []
with open(clustalw_file) as inputfile:
    for line in inputfile:
        clustalw_list.append(line.strip().split('\t'))

cl_id =[item[0] for item in clustalw_list]
cl_seq =[item[1] for item in clustalw_list]

new_seq = []

for i in xrange(0, len(cl_id)):

    if cl_seq[i] not in new_seq:

        new_seq.append(cl_seq[i])


for j in xrange(0, len(new_seq)):

    print '>new_seq_%d\t%s'%(j+1, new_seq[j]) 
