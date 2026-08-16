# SO-Trabalho-3 (Baseado nos anteriores)
*Rodei diretamente pelo GitHub Dev, pois nao estou com virtualização ativada no chip para rodar WLS e estou sem Dual Boot no momento*

Biblioteca C Padrão Mínima.
# Objetivos
Implementar tipos, macros e funções basicas normalmente fornecidas pela biblioteca C, mas adequadas ao ambiente freestánding do kernel.

## Arquivos
- kernel.c  — boot, sbi_call, putchar, print_string, kernel_main
- kernel.h  — struct sbiret
- kernel.ld — linker script
- common.c  — memset, memcpy, strcpy, strcmp, printf
- common.h  — tipos básicos (uint8_t, size_t, paddr_t, vaddr_t), macros va_list e protótipos
- run.sh    — build e execução no QEMU


