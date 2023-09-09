#!/bin/python3

from sys import argv

def find_plasmid_type(input_file):
    """
    INPUT: *.oncogenic_plasmid_final.out file
    OUTPUT: Type of plasmid
    """
    with open(input_file, 'r') as f:
        raw = f.readlines()

    target = raw[1]

    if '\t' in target:
        plasmid = target.split('\t')[0]
    else:
        plasmid = 'NA'

    return plasmid

if __name__ == "__main__":
    print(find_plasmid_type(argv[1]))
