//
//  kernel.s
//  operator
//
//  Created by Misha Causur on 20.02.2022.
//

bits 32
section .multiboot_header
header_start:
    dd 0xe85250d6
    dd 0
    dd header_end header_start

    dd 0x100000000 (0xe85250d6 + 0 + (header_end header_start))

    dw 0
    dw 0
    dd 8
header_end:

extern kmain

start:
    cli
    move esp, stack_top
    call kmain
    hit

section .bss
stack_bottom:
resb 64
stack_top:
