GCC = gcc
GFLAGS = -ansi -pedantic -Wall -std=c99 -D_POSIX_C_SOURCE=199309L
PROGRAMAS = CalculoDVT CyCalculoDVT 

AnalisisEstadistico:
	$(GCC) $(GFLAGS) CalculoDVT.py
	
CyAnalisisEstadistico:
	$(GCC) $(GFLAGS) CyCalculoDVT.py

clean:
	$(RM) *.o *.c  $(PROGRAMAS)
