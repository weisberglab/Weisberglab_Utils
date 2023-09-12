# Weisberglab_Utils
Set of commonly used scripts during various analysis

## Summarize ti type
### What it does:
Go to a beav output folder, read `*oncogenic_plasmid_final.out` file, and extract plasmid type. Return `NA` if not available.

### Usage
`find_plasmid_type.py path/to/beav/**oncogenic_plasmid_final.out`

`summarize_ti_type/summarize_ti_plasmid.sh` is bash wrapper that use this script to mine plasmid types from a bunch of beav output folders. This assumes the *fna files, based on which beav sub-directories is generated, are in the same directory:

`./summarize_ti_plasmid.sh > plasmid_type.out`

## summarize sketch
Run BBsketch on raw fastq files. For a set of sketches produced by the BBSketch program, this script will report the top hits for all sketches and write the output as a tsv file. 


## Assembly stat
Summarize flye assemblies
