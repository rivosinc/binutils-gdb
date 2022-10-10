#as: -march=rv32iv_zvksed
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+8620a0f7[ 	]+vsm4k.vi[ 	]+v1,v2,1
[ 	]+[0-9a-f]+:[ 	]+a62820f7[ 	]+vsm4r.vs[ 	]+v1,v2
[ 	]+[0-9a-f]+:[ 	]+a22820f7[ 	]+vsm4r.vv[ 	]+v1,v2
