# Fetch yeast tRNA-Phe (the plugin is loaded on the command line)
fetch 1ehz, type=cif
# List the feature types that dssr_select supports
dssr_select 1ehz, features
# index=0: list the junctions found by DSSR (here, one 4-way junction)
dssr_select 1ehz, junctions, 0
# index=1: select the first junction (named "dssr_select" by default)
dssr_select 1ehz, junctions, 1
# List the hairpin loops and the stems
dssr_select 1ehz, hairpins, 0
dssr_select 1ehz, stems, 0
# Draw schematic base blocks (default style: face)
dssr_block 1ehz
