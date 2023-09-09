# Weisberglab_Utils
Set of commonly used scripts during various analysis

## summarize_ti_type
### What it does:
Go to a beav output folder, read `*oncogenic_plasmid_final.out` file, and extract plasmid type. Return `NA` if not available.

### Usage
`find_plasmid_type.py path/to/beav/**oncogenic_plasmid_final.out`

`summarize_ti_type/summarize_ti_plasmid.sh` is bash wrapper that use this script to mine plasmid types from a bunch of beav output folders:

`./summarize_ti_plasmid.sh > plasmid_type.out`

## summarize_sketch.sh
For a set of sketches produced by the BBSketch program, this script will report the top hits for all sketches and write the output as a tsv file. 
