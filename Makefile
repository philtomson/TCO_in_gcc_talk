all: main_fib main_fib_tc_1 main_fib_tc_2 fib_tc_1.s fib_tc_2.s main_fact_tc_2

fib_tc_1.s: fib_tc.c
		gcc -S -c fib_tc.c -o fib_tc_1.s -O1 -masm=intel

fib_tc_2.s: fib_tc.c
		gcc -S -c fib_tc.c -o fib_tc_2.s -O2 -masm=intel

main_fib: fib.c main_fib.c
		gcc -o main_fib fib.c main_fib.c

main_fib_tc_1:	fib_tc.c main_fib_tc.c 
		gcc -o main_fib_tc_1 fib_tc.c main_fib_tc.c -O1

main_fib_tc_2: fib_tc.c main_fib_tc.c
		gcc -o main_fib_tc_2 fib_tc.c main_fib_tc.c -O2

main_fact_tc_2:	fact_tc.c main_fact_tc.c	
		gcc -o main_fact_tc -D DEBUG -O2 fact_tc.c main_fact_tc.c 		
.PHONY: all main_fib main_fib_tc_1 main_fib_tc_2 main_fact_tc_2
