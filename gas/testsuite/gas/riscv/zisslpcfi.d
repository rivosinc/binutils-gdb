#as: -march=rv64iqc_zisslpcfi
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+81c0c073[ 	]+sspush[ 	]+ra
[ 	]+[0-9a-f]+:[ 	]+81c2c073[ 	]+sspush[ 	]+t0
[ 	]+[0-9a-f]+:[ 	]+81c040f3[ 	]+sspop[ 	]+ra
[ 	]+[0-9a-f]+:[ 	]+81c042f3[ 	]+sspop[ 	]+t0
[ 	]+[0-9a-f]+:[ 	]+81d04573[ 	]+ssprr[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+827342f3[ 	]+ssamoswap[ 	]+t0,t2,\(t1\)
[ 	]+[0-9a-f]+:[ 	]+8a12c073[ 	]+sschkra
[ 	]+[0-9a-f]+:[ 	]+8291c073[ 	]+lpsll[ 	]+291
[ 	]+[0-9a-f]+:[ 	]+8391c073[ 	]+lpcll[ 	]+291
[ 	]+[0-9a-f]+:[ 	]+8644c073[ 	]+lpsml[ 	]+137
[ 	]+[0-9a-f]+:[ 	]+86c4c073[ 	]+lpcml[ 	]+137
[ 	]+[0-9a-f]+:[ 	]+8744c073[ 	]+lpsul[ 	]+137
[ 	]+[0-9a-f]+:[ 	]+87c4c073[ 	]+lpcul[ 	]+137
