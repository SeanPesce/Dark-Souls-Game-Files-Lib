_DATA SEGMENT

_DATA ENDS

_TEXT SEGMENT

extern param_load_asm_return: qword
extern files_buff_ptr: qword
extern loaded_count_ptr: qword

PUBLIC asm_param_load_check
asm_param_load_check PROC

push rbx
push rcx
push rdx
push rsi

mov rbx, 0 ; Index
mov rsi, 0 ; Offset
mov rcx, files_buff_ptr
mov rdx, loaded_count_ptr
mov rdx, [rdx]
cmp rdx, rbx
je loop_end

loop_start: ; Loop until first unused array element is found
inc rbx
add rsi, 4
cmp rdx, rbx
jne loop_start

loop_end:
; rsi now holds offset to write in buffer
add rcx, rsi
mov [rcx], rax ; Store starting address of current param file

; Increment loaded param file count
mov rcx, loaded_count_ptr
mov rbx, qword ptr[rcx]
add rbx, 1
mov qword ptr[rcx], rbx

pop rsi
pop rdx
pop rcx
pop rbx

; Original code:
mov     [rsp+38h], rbx
lea     rcx, [rsp+38h]
call    qword ptr [14051E160h]
jmp param_load_asm_return

asm_param_load_check ENDP

_TEXT ENDS

END
