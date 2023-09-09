#!/bin/bash

for fasta in ../../*fna
do
        infile=`echo -e "$fasta" | sed 's/.fna//g'`
        label=`echo -e "$infile" | sed 's/..\///g'`
        plasmid=`python3 find_plasmid_type.py ${infile}/*oncogenic_plasmid_final.out`
        echo -e ${label}'\t'${plasmid}
done
