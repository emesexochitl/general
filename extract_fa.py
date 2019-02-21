#!/usr/bin/python

from Bio import SeqIO
import datetime
import gzip
from Bio.SeqIO import FastaIO



fasta_file = "../../Data/references/ribosomal/all-trnas.fa"  # Input fasta file
result_file = "arabidopsis_thaliana_trna.fa" # Output fasta file
now = datetime.datetime.now()

print str(now)

fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')
    
with open(result_file, "w") as f:
        for seq in fasta_sequences:
            if "thaliana" in seq.id:
                SeqIO.write([seq], f, 'fasta')
        
