# Examples: yeast tRNA-Phe (PDB ID: 1EHZ)

Sample input (PyMOL scripts) and output for yeast phenylalanine tRNA. Both scripts fetch 1EHZ from the PDB, so internet access is needed, and `x3dna-dssr` must be on your `PATH`.

| File | Description |
|---|---|
| `session-1ehz.pml` | Lists the supported features, lists and selects the four-way junction, lists the hairpin loops and stems, and draws base blocks with `dssr_select` and `dssr_block`. |
| `session-1ehz.txt` | Console output of `session-1ehz.pml`. |
| `layouts-1ehz.pml` | Exports the 2D diagram of 1EHZ in the four `dssr_2d` layouts. |
| `1ehz-standard.svg`, `1ehz-circular.svg`, `1ehz-linear.svg`, `1ehz-radiate.svg` | Output of `layouts-1ehz.pml`. |

Run the scripts from this folder:

```
pymol -cqk ../dssr_select.py session-1ehz.pml
pymol -qk ../dssr_select.py layouts-1ehz.pml
```

`dssr_2d` draws through PyMOL's Qt interface, so `layouts-1ehz.pml` needs the regular (graphical) PyMOL, not `pymol -c`; a PyMOL window opens briefly, and the script ends with `quit`.

The commands can also be typed one by one in the PyMOL console after loading the plugin. The selection created for the junction contains 16 nucleotides: `chain A and resi 7+8+9+10+25+26+27+43+44+45+46+47+48+49+65+66`.
