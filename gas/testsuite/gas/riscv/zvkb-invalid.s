	# Invalid register type used
	vclmul.vv x1, v2, v3
	vclmul.vv v1, x2, v3
	vclmul.vv v1, v2, x3
	vclmul.vx x1, v2, x3
	vclmul.vx v1, x2, x3
	vclmul.vx v1, v2, v3
	vclmulh.vv x1, v2, v3
	vclmulh.vv v1, x2, v3
	vclmulh.vv v1, v2, x3
	vclmulh.vx x1, v2, x3
	vclmulh.vx v1, x2, x3
	vclmulh.vx v1, v2, v3
	
	vrol.vv x1, v2, v3
	vrol.vv v1, x2, v3
	vrol.vv v1, v2, x3
	vrol.vv v1, v2, v3, 1
	vrol.vx x1, v2, x3
	vrol.vx v1, x2, x3
	vrol.vx v1, v2, v3
	vrol.vx v1, v2, x3, 1
	vror.vv x1, v2, v3
	vror.vv v1, x2, v3
	vror.vv v1, v2, x3
	vror.vv v1, v2, v3, 1
	vror.vx x1, v2, x3
	vror.vx v1, x2, x3
	vror.vx v1, v2, v3
	vror.vx v1, v2, x3, 1
	vror.vi x1, v3, 63
	vror.vi v1, x3, 63
	vror.vi v1, v3, 63, 1
	vbrev8.v x1, v2
	vbrev8.v v1, x2
	vbrev8.v v1, v2, 1
	vrev8.v x1, v2
	vrev8.v v1, x2
	vrev8.v x1, v2, 1
	vrev8.v v1, x2, 1
	vandn.vv x1, v2, v3
	vandn.vv v1, x2, v3
	vandn.vv v1, v2, x3
	vandn.vv v1, v2, v3, 1
	vandn.vx x1, v2, x3
	vandn.vx v1, x2, x3
	vandn.vx v1, v2, v3
	vandn.vx v1, v2, x3, 1
	vandn.vi x1, v2, -16
	vandn.vi v1, x2, -16
	vandn.vi v1, v2, -16, 1

	# Immediate outside of encoding range
	vror.vi v1, v3, 64
	vror.vi v1, v3, -1
	vandn.vi v1, v2, -17
	vandn.vi v1, v2, 16
