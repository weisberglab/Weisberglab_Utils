#!/bin/bash

# Create the header for summary file
echo 'strainID  ANI     gSize   taxName' > sketch_summary.tsv

# Loop through sketch report and extract necessary column from the first hit
for sketch in `ls -d *.sketch`;
do
        strainid=`basename "$sketch" | sed 's/.sketch//g'`
        ani=`tail -n +4 $sketch | head -n 1 | cut -f 3`
        gSize=`tail -n +4 $sketch | head -n 1 | cut -f 10`
        taxa=`tail -n +4 $sketch | head -n 1 | cut -f 12`
        echo "${strainid}       ${ani}  ${gSize}        ${taxa}" >> sketch_summary.tsv
done
