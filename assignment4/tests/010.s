global _main
extern _sub_ints
extern _sub_floats
extern _has_size
extern _sepia
extern _blur
extern _resize
extern _crop
extern _read_image
extern _print
extern _write_image
extern _show
extern _fail_assertion
extern _get_time

section .data
const0: dq 3.14
const1: dq 2.72
const2: dq 0

section .text

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	mov rbx, [rel const0] ; 3.14
	mov [rbp - 8], rbx
	mov rbx, [rel const1] ; 2.72
	mov [rbp - 16], rbx
	mov rbx, [rel const2] ; 0
	mov [rbp - 24], rbx
	mov rax, [rbp - 24]
	add rsp, 32
	pop rbp
	ret
Compilation succeeded: assembly complete
