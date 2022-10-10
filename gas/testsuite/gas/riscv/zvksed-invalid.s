	# Invalid register type used
	vsm4k.vi x1, v2, 1
	vsm4k.vi v1, x2, 1
	vsm4r.vs x1, v2
	vsm4r.vs v1, x2
	vsm4r.vv x1, v2
	vsm4r.vv v1, x2

	# Immediate outside of encoding range
	vsm4k.vi v1, v2, -1
	vsm4k.vi v1, v2, 32
