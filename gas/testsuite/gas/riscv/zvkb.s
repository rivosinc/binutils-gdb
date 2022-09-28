	vclmul.vv v1, v2, v3
	vclmul.vx v1, v2, x3
	vclmulh.vv v1, v2, v3
	vclmulh.vx v1, v2, x3
	vrol.vv v1, v2, v3
	vrol.vv v1, v2, v3, v0.t
	vrol.vx v1, v2, x3
	vrol.vx v1, v2, x3, v0.t
	vror.vv v1, v2, v3
	vror.vv v1, v2, v3, v0.t
	vror.vx v1, v2, x3
	vror.vx v1, v2, x3, v0.t
	vror.vi v1, v3, 63
	vror.vi v1, v3, 63, v0.t
	vbrev8.v v1, v2
	vbrev8.v v1, v2, v0.t
	vrev8.v v1, v2
	vrev8.v v1, v2, v0.t
	vandn.vv v1, v2, v3
	vandn.vv v1, v2, v3, v0.t
	vandn.vx v1, v2, x3
	vandn.vx v1, v2, x3, v0.t
	vandn.vi v1, v2, -16
	vandn.vi v1, v2, -16, v0.t
	vandn.vi v1, v2, 15
	vandn.vi v1, v2, 15, v0.t
