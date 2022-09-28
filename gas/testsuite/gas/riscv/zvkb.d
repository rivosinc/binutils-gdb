#as: -march=rv32iv_zvkb
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+3221a0d7[ 	]+vclmul.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+3221e0d7[ 	]+vclmul.vx[ 	]+v1,v2,gp
[ 	]+[0-9a-f]+:[ 	]+3621a0d7[ 	]+vclmulh.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+3621e0d7[ 	]+vclmulh.vx[ 	]+v1,v2,gp
[ 	]+[0-9a-f]+:[ 	]+562180d7[ 	]+vrol.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+542180d7[ 	]+vrol.vv[ 	]+v1,v2,v3,v0.t
[ 	]+[0-9a-f]+:[ 	]+5621c0d7[ 	]+vrol.vx[ 	]+v1,v2,gp
[ 	]+[0-9a-f]+:[ 	]+5421c0d7[ 	]+vrol.vx[ 	]+v1,v2,gp,v0.t
[ 	]+[0-9a-f]+:[ 	]+522180d7[ 	]+vror.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+502180d7[ 	]+vror.vv[ 	]+v1,v2,v3,v0.t
[ 	]+[0-9a-f]+:[ 	]+5221c0d7[ 	]+vror.vx[ 	]+v1,v2,gp
[ 	]+[0-9a-f]+:[ 	]+5021c0d7[ 	]+vror.vx[ 	]+v1,v2,gp,v0.t
[ 	]+[0-9a-f]+:[ 	]+563fb0d7[ 	]+vror.vi[ 	]+v1,v3,63
[ 	]+[0-9a-f]+:[ 	]+543fb0d7[ 	]+vror.vi[ 	]+v1,v3,63,v0.t
[ 	]+[0-9a-f]+:[ 	]+4a2420d7[ 	]+vbrev8.v[ 	]+v1,v2
[ 	]+[0-9a-f]+:[ 	]+482420d7[ 	]+vbrev8.v[ 	]+v1,v2,v0.t
[ 	]+[0-9a-f]+:[ 	]+4a24a0d7[ 	]+vrev8.v[ 	]+v1,v2
[ 	]+[0-9a-f]+:[ 	]+4824a0d7[ 	]+vrev8.v[ 	]+v1,v2,v0.t
[ 	]+[0-9a-f]+:[ 	]+062180d7[ 	]+vandn.vv[ 	]+v1,v2,v3
[ 	]+[0-9a-f]+:[ 	]+042180d7[ 	]+vandn.vv[ 	]+v1,v2,v3,v0.t
[ 	]+[0-9a-f]+:[ 	]+0621c0d7[ 	]+vandn.vx[ 	]+v1,v2,gp
[ 	]+[0-9a-f]+:[ 	]+0421c0d7[ 	]+vandn.vx[ 	]+v1,v2,gp,v0.t
[ 	]+[0-9a-f]+:[ 	]+062830d7[ 	]+vandn.vi[ 	]+v1,v2,-16
[ 	]+[0-9a-f]+:[ 	]+042830d7[ 	]+vandn.vi[ 	]+v1,v2,-16,v0.t
[ 	]+[0-9a-f]+:[ 	]+0627b0d7[ 	]+vandn.vi[ 	]+v1,v2,15
[ 	]+[0-9a-f]+:[ 	]+0427b0d7[ 	]+vandn.vi[ 	]+v1,v2,15,v0.t
