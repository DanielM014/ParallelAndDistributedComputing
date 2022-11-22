## Autor: Daniel Esteban Molina Sanchez
## Programa: Ciencias de la Computacion e Inteligencia Artificial
## Fecha: 18 de Noviembre de 2022
## Tema: Benchmark 01 en Cython para Parcial final
## Materia: Parallel and Distributed Computing
import random
cdef cal_velocidad(double dis,double tiempo):
    cdef double respuesta, respuesta2
    respuesta = dis / tiempo
    respuesta2 = respuesta * 1000
    print(" VELOCIDAD ")
    print("La velocidad es de", respuesta, "Kilometros por hora")
    print("La velocidad es de", respuesta2, "Metros por hora")
    print("\n")
    return respuesta
 

cdef cal_distancia(double vel,double tiempo):
    cdef double respuesta, respuesta2
    respuesta = vel * tiempo
    respuesta2 = respuesta * 1000
    print(" DISTANCIA ")
    print("La distancia es de", respuesta, "Kilometros")
    print("La distancia es de", respuesta2, "Metros")
    print("\n")
    return respuesta;
 
cdef cal_tiempo(double dis,double vel):
    cdef double respuesta, respuesta2
    respuesta = dis/vel
    respuesta2 = respuesta * 60
    print(" TIEMPO  ")
    print("Se tarda", respuesta, "horas o")
    print("Se tarda", respuesta2, "minutos")
    print("\n")
    return respuesta

cdef aleatorizar(double valor):
  valor = random.uniform(10.0,120.0)
  return valor

cdef Cymain1():
  cdef double velocidad = 0.0, distancia = 0.0, tiempo = 5.0
  #Tiempo constante, pues si se aleatoriza podria dar resultados muy exagerados
  velocidad = aleatorizar(velocidad)
  distancia = aleatorizar(distancia)
  print("Velocidad(KM/Hrs): ",velocidad)
  print("Distancia(KMs): ",distancia)
  print("Tiempo(Hrs): ",tiempo)
  print("\n")
  cal_velocidad(distancia,tiempo)
  cal_distancia(velocidad,tiempo)
  cal_tiempo(distancia,velocidad)

