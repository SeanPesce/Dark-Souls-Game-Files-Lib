_DATA SEGMENT

_DATA ENDS

_TEXT SEGMENT

extern param_load_asm_return: qword
extern files_buff_ptr: qword
extern loaded_count_ptr: qword

PUBLIC asm_param_load_check
asm_param_load_check PROC

push ebx
push ecx
push edx
push esi

mov ebx, 0 # Index
mov esi, 0 # Offset
mov ecx, files_buff_ptr
mov edx, loaded_count_ptr
mov edx, [edx]
cmp edx, ebx
je loop_end

loop_start: # Loop until first unused array element is found
inc ebx
add esi, 4
cmp edx, ebx
jne loop_start

loop_end:
# esi now holds offset to write in buffer
add ecx, esi
mov [ecx], eax # Store starting address of current param file

# Increment loaded param file count
mov ecx, loaded_count_ptr
mov ebx, dword ptr[ecx]
add ebx, 1
mov dword ptr[ecx], ebx

pop esi
pop edx
pop ecx
pop ebx

# Original code:
mov     [rsp+38h], rbx
lea     rcx, [rsp+38h]
call    qword ptr cs:[14051E160h]
jmp param_load_asm_return

asm_param_load_check ENDP

_TEXT ENDS

END
