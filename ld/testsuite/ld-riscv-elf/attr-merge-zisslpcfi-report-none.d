#source: attr-merge-zisslpcfi-10.s
#source: attr-merge-zisslpcfi-18.s
#source: attr-merge-zisslpcfi-27.s
#source: attr-merge-zisslpcfi-26x.s
#source: attr-merge-zisslpcfi-26.s
#as: -march-attr -misa-spec=2.2
#ld: -r -z zisslpcfi-report=none
#readelf: -A

#failif
Attribute Section: riscv
File Attributes
#...
  Tag_RISCV_zisslpcfi: .*
