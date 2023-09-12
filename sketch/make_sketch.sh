#!/bin/bash
#unset PYTHONPATH

for infile in `ls -1 ./raw/*.fastq.gz`; do
        dataset=`basename "$infile" | sed 's/.fastq.gz//g'`
        echo -e "$infile $dataset"
        sendsketch.sh -da in=$infile out=./sketches/${dataset}.sketch
done
