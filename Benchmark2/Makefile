GCC = gcc
GFLAGS = -ansi -pedantic -Wall -std=c99 -D_POSIX_C_SOURCE=199309L
PROGRAMAS = AnalisisEstadistico CyAnalisisEstadistico 

AnalisisEstadistico:
	$(GCC) $(GFLAGS) AnalisisEstadistico.py
	
CyAnalisisEstadistico:
	$(GCC) $(GFLAGS) CyAnalisisEstadistico.py

clean:
	$(RM) *.o *.c  $(PROGRAMAS)
