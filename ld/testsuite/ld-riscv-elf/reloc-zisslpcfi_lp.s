	.attribute arch, "rv64i_zisslpcfi"
	.attribute zisslpcfi, 26

	.text

	.zisslpcfi_lp with_lp
with_lp:
	lpcll 111
	lpcml 222
	ret

without_lp:
	ret

	.globl _start
_start:
	call with_lp
	call without_lp
