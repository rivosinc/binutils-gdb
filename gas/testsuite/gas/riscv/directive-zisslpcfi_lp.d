#source: directive-zisslpcfi_lp.s
#as: -march-attr -misa-spec=2.2
#readelf: --syms

Symbol table '.symtab' contains [0-9] entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
#...
     [0-9]: [0-9a-f]+     0 NOTYPE  LOCAL  DEFAULT \[40\]     1 with_lp
#...
     [0-9]: [0-9a-f]+     0 NOTYPE  LOCAL  DEFAULT    1 without_lp
#...
