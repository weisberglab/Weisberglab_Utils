#!/bin/bash

echo "Strain    Assembly_Size_bp        Coverage        Fragments       Fragments_N50"

for directory in `ls -d flyehq_*`;
do
        strain=`echo -e $directory | sed 's/flyehq_*'//g`
        assemblysize=`grep 'Total length:' ${directory}/flye.log | sed 's/\tTotal length:\t//g'`
        coverage=`grep 'Mean coverage:' ${directory}/flye.log | sed 's/\tMean coverage:\t//g'`
        fragments=`grep 'Fragments:' ${directory}/flye.log | sed 's/\tFragments:\t//g'`
        N50=`grep 'Fragments N50:' ${directory}/flye.log | sed 's/\tFragments N50:\t//g'`
        echo "$strain   $assemblysize   $coverage       $fragments      $N50"
done
