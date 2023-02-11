#source: attr-merge-zisslpcfi-26x.s
#source: attr-merge-zisslpcfi-26.s
#source: attr-merge-zisslpcfi-10.s
#source: attr-merge-zisslpcfi-18.s
#source: attr-merge-zisslpcfi-27.s
#as: -march-attr -misa-spec=2.2
#ld: -r -z zisslpcfi-report=warning
#warning: .*-10.o has zisslpcfi attribute 10 \(\+2\+type\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
#warning: .*-18.o has zisslpcfi attribute 18 \(\+2\+check0\+ss\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
#warning: .*-27.o has zisslpcfi attribute 27 \(\+3\+type\+ss\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
#readelf: -A

#failif
Attribute Section: riscv
File Attributes
#...
  Tag_RISCV_zisslpcfi: .*
