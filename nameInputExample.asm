.data
newline: .asciiz "\n"

prompt: .asciiz "What is your name? "
hello: .asciiz "Hello "
name: .space 61 #Creates 61 bytes of space

.text

.globl main
main:

#Print prompt
li $v0,4
la $a0,prompt
syscall

#Receive input from user
li $v0,8	#Read a string
li $a1,61	#maximum length of string (buffer)
la $a0,name #load the address that will be used to store the input
syscall

#Print hello
li $v0,4
la $a0,hello
syscall

#Print name
la $a0,name
syscall

#Exit
li $v0,10
syscall
