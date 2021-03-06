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
const0: db `foo.png`, 0
const1: dq 0

section .text

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 80
	lea rbx, [rel const0] ; foo.png
	mov [rbp - 16], rbx
	lea rdi, [rbp - 40]
	mov rsi, [rbp - 16]
	call _read_image
	mov rbx, [rbp - 40 + 0]
	mov [rbp - 64 + 0], rbx
	mov rbx, [rbp - 40 + 8]
	mov [rbp - 64 + 8], rbx
	mov rbx, [rbp - 40 + 16]
	mov [rbp - 64 + 16], rbx
	mov rbx, [rel const1] ; 0
	mov [rbp - 72], rbx
	mov rax, [rbp - 72]
	add rsp, 80
	pop rbp
	ret
Compilation succeeded: assembly complete
