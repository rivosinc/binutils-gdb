#source: attr-merge-zisslpcfi-26x.s
#source: attr-merge-zisslpcfi-26.s
#source: attr-merge-zisslpcfi-10.s
#source: attr-merge-zisslpcfi-18.s
#source: attr-merge-zisslpcfi-27.s
#as: -march-attr -misa-spec=2.2
#ld: -r -z zisslpcfi-report=error
#error: .*-10.o has zisslpcfi attribute 10 \(\+2\+type\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
riscv64-unknown-linux-gnu-ld: failed to merge target specific data of file attr-merge-zisslpcfi-10.o
#error: .*-18.o has zisslpcfi attribute 18 \(\+2\+check0\+ss\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
riscv64-unknown-linux-gnu-ld: failed to merge target specific data of file attr-merge-zisslpcfi-18.o
#error: .*-27.o has zisslpcfi attribute 27 \(\+3\+type\+ss\), but the output has zisslpcfi attribute 26 \(\+2\+type\+ss\)
riscv64-unknown-linux-gnu-ld: failed to merge target specific data of file attr-merge-zisslpcfi-27.o
