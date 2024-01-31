BITS 64
section .text
    global my_Strlen

my_Strlen:
    mov rcx, 0

loop:
    cmp byte [rdi + rcx], 0
    je end_strlen
    inc rcx
    jmp loop

end_strlen:
    mov rax, rcx
    ret
        