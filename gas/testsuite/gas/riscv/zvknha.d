#as: -march=rv32iv_zvknha
#source: zvknh.s
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+b621a0f7[ 	]+vsha2ms.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+ba21a0f7[ 	]+vsha2ch.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+be21a0f7[ 	]+vsha2cl.vv[ 	]+v1,v2,v3
