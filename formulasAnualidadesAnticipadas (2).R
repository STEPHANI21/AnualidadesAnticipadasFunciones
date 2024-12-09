#Autor:Stephani Olvera Chavez 
#V1.0 :07 de NOVIEMBBRE de 2024

#Valor futuro, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
ValorFuturoAnualidadesAnticipadas=function(A, r, n) {
  xSalida=A*(((1 + r)^n-1)/r)(1+r)
  return(xSalida)
}
#Anualidad, conociendo valor futuro, tasa del periodo y número de pagos.
AnualidadAnualidadesAnticipadas=function(VF, r, n) {
 xSalida= VF*r/(((1+r)^n-1)(1+r))
 return(xSalida)
}
#Número de pagos o plazo, conociendo valor futuro, número de pagos y tasa del periodo.
tiempoAnualidadAnticipada=function(VF, A, r) {
  xSalida=log((VF*r/A)+1)/log(1+r)
  return(xSalida)
}
#Tasa del periodo, conociendo valor futuro, número de pagos y monto de la anualidad.
tasaAnualidadAnticipadaVF=function(VF,A,Tpers,umbral=10*(10^-18)){
  
  r=0.01
  iteraciones=0
  
  izquierda=VF/(A*(1+r))
  derecha=(((1+r)^Tpers)-1)/r
  diferencia=izquierda-derecha
  if (diferencia>0){
    # Cuando la r inicial es menor a lo deseado:  
    # Algoritmo de alza de tasa:
    
    iteraciones=0
    r0=r
    while (diferencia>0){
      r1=r  
      iteraciones=iteraciones+1  
      r=r*1.01
      izquierda=VF/(A*(1+r))
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de alza tasa:",iteraciones))
      
      r2=r
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    diferencia=umbral
    # algoritmo de la bisección:    
    while (abs(diferenciaTasa)>umbral){
      
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      
      izquierda=VF/(A*(1+r))
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      
      if (diferencia>0){
        r1=r1
        r2=r
      } else {
        r2=r2  
        r1=r
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de bisección: ",iteraciones))
    }
  } else {
    # Cuando la r inicial es mayor a lo deseado:  
    # Algoritmo de bajada de tasa:
    iteraciones=0
    r0=r
    while (diferencia<0){
      r2=r 
      iteraciones=iteraciones+1  
      r=r/1.01
      izquierda=VF/(A*(1+r))
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de baja de tasa:",iteraciones))
      r1=r
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    r0=r
    diferencia=umbral    
    # algoritmo de la bisección:      
    while (abs(diferenciaTasa)>umbral){
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      izquierda=VF/(A*(1+r))
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      if (diferencia>0){
        r1=r
        r2=r2
      } else {
        r2=r  
        r1=r1
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de biseccción:",iteraciones))
    }
  }
  
  # Genera objeto de salida:
  objetoTasa=list(Iteraciones=iteraciones,tasa=r)
  
  cat("\f")
  print(paste0("Total de iteraciones realizadas: ",iteraciones))
  
  return(objetoTasa) 
}
#Valor actual, conociendo la anualidad, tasa de interés del periodo y el número (plazo) de anualidades.
ValorActualAnualidadesAnticipadas=function(A, r, n) {
  xSalida=A*((1-(1+r)^(-n))/r)(1+r)
  return(xSalida)
}
#Anualidad, conociendo valor actual, tasa del periodo y número de pagos.
AnualidadVaAnualidadesAnticipadas=function(VA, r, n) {
  xSalida=VA*r/(1-(1+r)^(-n))
  return(xSalida)
}
#Número de pagos o plazo, conociendo valor actual, número de pagos y tasa del periodo.
TiempoVaAnualidadesAnticipadas=function(VA, A, r) {
  xSalida=log(1-(A/VA*r))/log(1+r)
  return(xSalida)
}
#Tasa del periodo, conociendo valor actual, número de pagos y monto de la anualidad.
tasaAnualidadAnticipadaVA=function(VA,A,Tpers,umbral=10*(10^-18)){
  r=0.001
  iteraciones=0
  izquierda=VA/(A*(1+r))
  derecha=(1-((1+r)^-Tpers))/r
  diferencia=izquierda-derecha
  if (diferencia<0){
    # Cuando la r inicial es menor a lo deseado:  
    # Algoritmo de alza de tasa:
    iteraciones=0
    r0=r
    while (diferencia<0){
      r1=r  
      iteraciones=iteraciones+1  
      r=r*1.01
      izquierda=VA/(A*(1+r))
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de alza tasa:",iteraciones))
      r2=r
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    diferencia=umbral
    # algoritmo de la bisección:    
    while (abs(diferenciaTasa)>umbral){
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      izquierda=VA/(A*(1+r))
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      if (diferencia>0){
        r1=r1
        r2=r
      } else {
        r2=r2  
        r1=r   
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de bisección: ",iteraciones))
    }
  } else {
    # Cuando la r inicial es mayor a lo deseado:  
    # Algoritmo de bajada de tasa:
    iteraciones=0
    r0=r
    while (diferencia>0){
      r2=r 
      iteraciones=iteraciones+1  
      r=r/1.01
      izquierda=VA/(A*(1+r))
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de baja de tasa:",iteraciones))
      r1=r
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    r0=r
    diferencia=umbral    
    # algoritmo de la bisección:      
    while (abs(diferenciaTasa)>umbral){
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      izquierda=VA/(A*(1+r))
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      if (diferencia>0){
        r1=r
        r2=r2
      } else {
        r2=r  
        r1=r1
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de biseccción:",iteraciones))
    }
  }
  # Genera objeto de salida:
  objetoTasa=list(Iteraciones=iteraciones,tasa=r)
  
  cat("\f")
  print(paste0("Total de iteraciones realizadas: ",iteraciones))
  return(objetoTasa) 
}