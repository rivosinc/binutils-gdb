#source: reloc-zisslpcfi_lp.s
#as: -march-attr -misa-spec=2.2
#ld: -m[riscv_choose_lp64_emul]
#objdump: -d

.*:[ 	]+file format .+


Disassembly of section .text:

0+[0-9a-f]+ <with_lp>:
.+:[ 	]+[0-9a-f]+[ 	]+lpcll[ 	]+[0-9]+
.+:[ 	]+[0-9a-f]+[ 	]+lpcml[ 	]+[0-9]+
.+:[ 	]+[0-9a-f]+[ 	]+ret

0+[0-9a-f]+ <without_lp>:
.+:[ 	]+[0-9a-f]+[ 	]+ret

0+[0-9a-f]+ <_start>:
.+:[ 	]+[0-9a-f]+[ 	]+jal[ 	]+.+[0-9a-f]+[ 	]+<with_lp\+0x8>
.+:[ 	]+[0-9a-f]+[ 	]+jal[ 	]+.+[0-9a-f]+[ 	]+<without_lp>
