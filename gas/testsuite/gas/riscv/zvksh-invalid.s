	# Invalid register type used
	vsm3c.vi x1, v2, 1
	vsm3c.vi v1, x2, 1
	vsm3me.vv x1, v2, v3
	vsm3me.vv v1, x2, v3
	vsm3me.vv v1, v2, x3

	# Immediate outside of encoding range
	vsm3c.vi v1, v2, -1
	vsm3c.vi v1, v2, 32
