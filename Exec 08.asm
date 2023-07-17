.data

.text

.globl main

main:
	li $v0, 5 # syscall para ler inteiro
        syscall
        
        move $t0, $v0 # armazena N em $t0
        li $t1, 1 # armazena 1 em $t1 para iniciar o cálculo do fatorial
        li $t2, 1 # armazena 1 em $t2 para armazenar o resultado do fatorial
loop:
        beq $t1, $t0, end # se o contador == N, pule para o final
        mul $t2, $t2, $t1 # multiplica o resultado do fatorial pelo contador
        
        addi $t1, $t1, 1 # incrementa o contador
        
        j loop # pula para o início do loop
end:
        mul $t2, $t2, $t1 # multiplica o resultado do fatorial pelo último número (N)
        move $a0, $t2 # move o resultado do fatorial para $a0 para imprimir
        
        li $v0, 1 # syscall para imprimir inteiro
        syscall
        
        li $v0, 10 # syscall para sair
        syscall
