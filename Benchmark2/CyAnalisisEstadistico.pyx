## Autor: Daniel Esteban Molina Sanchez
## Programa: Ciencias de la Computacion e Inteligencia Artificial
## Fecha: 18 de Noviembre de 2022
## Tema: Benchmark 02 en cython para Parcial final
## Materia: Parallel and Distributed Computing

import random
import collections
cdef calcularMediana(datos):
  cdef int numero_datos,mitad
  datos_ordenados = sorted(datos)
  numero_datos = len(datos_ordenados)
  mitad = (numero_datos - 1) // 2
  if mitad % 2:
        return datos_ordenados[mitad]
  else:
        return (datos_ordenados[mitad] + datos_ordenados[mitad + 1]) / 2.0

cdef calcularMedia(datos):
  cdef int sumatoria_datos, numero_datos
  cdef double mitad
  sumatoria_datos = sum(datos)
  numero_datos = len(datos)
  media = sumatoria_datos/numero_datos
  return media

cdef calcularModa(datos):
    frecuencia = collections.Counter(datos)
    Obtener_frecuencia = dict(frecuencia)
    moda = [k for k, v in Obtener_frecuencia.items() if v == max(list(frecuencia.values()))]
    return moda
  

cdef datosAleatorios(datos):
  cdef int i = 0, n
  for i in range(0,20):
    n = random.randint(1,100)
    datos.append(n)
    i+= 1


cdef Cymain2():
  data = []
  datosAleatorios(data)
  print("Cadena de datos: ")
  print(data)
  print("La mediana de los datos es de:", calcularMediana(data))
  print("La media de los datos es de:  ", calcularMedia(data))
  if(calcularModa(data) == data):
    print("No hay moda / Ningun dato se repite mas de una vez")
  else:
    print("La moda de los datos es de:  ", calcularModa(data))

