import random
def cal_velocidad(dis, tiempo):
    respuesta = dis / tiempo
    respuesta2 = respuesta * 1000
    print(" VELOCIDAD ")
    print("La velocidad es de", respuesta, "Kilometros por hora")
    print("La velocidad es de", respuesta2, "Metros por hora")
    print("\n")
    return respuesta
 

def cal_distancia(vel, tiempo):
    respuesta = vel * tiempo
    respuesta2 = respuesta * 1000
    print(" DISTANCIA ")
    print("La distancia es de", respuesta, "Kilometros")
    print("La distancia es de", respuesta2, "Metros")
    print("\n")
    return respuesta;
 
def cal_tiempo(dis, vel):
    respuesta = dis/vel
    respuesta2 = respuesta * 60
    print(" TIEMPO  ")
    print("Se tarda", respuesta, "horas o")
    print("Se tarda", respuesta2, "minutos")
    print("\n")
    return respuesta

def aleatorizar(valor):
  valor = random.uniform(10.0,120.0)
  return valor

def main():
  velocidad = 0.0
  distancia = 0.0
  #Tiempo constante, pues si se aleatoriza podria dar resultados muy exagerados
  tiempo = 5.0
  velocidad = aleatorizar(velocidad)
  distancia = aleatorizar(distancia)
  print("Velocidad(KM/Hrs): ",velocidad)
  print("Distancia(KMs): ",distancia)
  print("Tiempo(Hrs): ",tiempo)
  print("\n")
  cal_velocidad(distancia,tiempo)
  cal_distancia(velocidad,tiempo)
  cal_tiempo(distancia,velocidad)
