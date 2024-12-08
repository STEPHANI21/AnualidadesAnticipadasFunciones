
# ANUALIDADES ANTICIPADAS
FORMULAS DE ANUALIDADES ANTICIPADAS VF y VA
# Compilación de funciones de matemáticas financieras 

En este repositorio se agrupan las funciones y actividades informaticas realizadas en la materia de matemáticas financieras  de la licenciatura en Actuaria y Ciencia de Datos de la UMSNH.

## Funciones de anualidades anticipadas

Con el siguiente código,puede usted cargar las funciones relativas a los calculos de anualidades anticipadas:

```{r}
source("https://raw.githubusercontent.com/STEPHANI21/AnualidadesAnticipadasFunciones/refs/heads/main/formulasAnualidadesAnticipadas.R")
```

### Cálculo del Valor Futuro en Anualidades Anticipadas 
Para ilustrar el ejemplo se tiene el siguiente ejercicio:
¿Cuánto dinero se obtendrá si se invierten $120 USD Mensuales en un fondo de inversión durante 3 años iniciando desde hoy, si pagan una tasa de interés mensual del 1,5%?
$A$=120.00
$i$=18.00% anualizado
$r$=1.5% mensual
$n$=36 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
Anualidad=120
tasaPeriodo=1.5
nPeriodos=36
# Calculamos el Valor Futuro:
valorFuturo=ValorFuturoAnualidadesAnticipadas(A=Anualidad,r=tasaPeriodo,n=nPeriodos)
# Imprimimos el resultado :
valorFuturo
```

### Cálculo de la Anualidad en Anualidades Anticipadas con VF

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
Se obtendrá 5758.21 en un fondo de inversión durante 3 años iniciando desde hoy, si pagan una tasa de interés mensual del 1,5%.¿Cuanto debera pagar cada mes?
$VF$=575821
$i$=18.00% anualizado
$r$=1.5% mensual
$n$=36 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=5758.21
tasaPeriodo=1.5
nPeriodos=36
# Calculamos la Anualidad:
Anualidad=AnualidadAnualidadesAnticipadas(VF=valorFut,r=tasaPeriodo,=nPeriodos)
# Imprimimos el resultado :
Anualidad
```
### Cálculo de el Numeros de pagos en Anualidades Anticipadas con VF

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
Cuánto tiempo se tardara si se invierten $120 USD Mensuales en un fondo de inversión para lograr obtener $5758.21 USD, si pagan una tasa de interés mensual del 1.5%
$VF$=5758.21
$i$=18.00% anualizado
$r$=1.5% mensual
$A$=120

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=5758.21
tasaPeriodo=1.5
Anualidad=120
# Calculamos el tiempo:
tiempo=tiempoAnualidadAnticpada(VF=valorFut,r=tasaPeriodo,A=Anualidad)
# Imprimimos el resultado :
tiempo
```
### Cálculo de la tasa del periodo en Anualidades Anticipada con VF

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
¿Cuál es la tasa de interes mensual y anualizada,de una persona que invierte $120 USD Mensuales en un fondo de inversión durante 3 años iniciando desde hoy, y al final tiene $5758.21 USD?
$VF$=5758.21
$n$=36 meses
$A$=120

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=5758.21
nPeriodos=36
Anualidad=120
# Calculamos el tasa:
tasa=tasaAnualidadAnticipadaVF(VF=valorFut,Tpers=nPeriodos,A=Anualidad)
# Imprimimos el resultado :
tasa
```
### Cálculo del Valor Actual en Anualidades Anticipadas

Una persona paga $500.00 al mes a una tasa del 36% anual recapitalizable mensualmente. Esto durante 36 meses ¿Cuánto le prestaron? Calcule el monto
Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$A$=500.00
$i$=36.00% anualizado
$r$=3.00% mensual
$n$=36 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
Anualidad=500
tasaPeriodo=3.00
nPeriodos=36
# Calculamos el Valor Actual:
valorActual=ValorActualAnualidadesAnticipadas(A=Anualidad,r=tasaPeriodo,n=nPeriodos)
# Imprimimos el resultado :
valorActual
```
### Cálculo de la Anualidad en Anualidades Anticipadas con VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
A una persona le prestaron $11,243.61 a una tasa del 36% anual recapitalizable mensualmente. Esto durante 36 meses ¿Cuánto debe pagar cada mes? 
$VA$=11243.61
$i$=36.00% anualizado
$r$=3.00% mensual
$n$=36 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=11243.61
tasaPeriodo=3.00
nPeriodos=36
# Calculamos la Anualidad:
Anualidad=AnualidadVaAnualidadesAnticipadasA(VA=valorAct,r=tasaPeriodo,n=nPeriodos)
# Imprimimos el resultado :
Anualidad
```
### Cálculo de el Numeros de pagos en Anualidades Anticipadas con VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
A una persona le prestaron $11,243.61 y debera pagar $500.00 al mes a una tasa del 36% anual recapitalizabl9e mensualmente.¿Cuantos meses debera pagar para liquidar el prestamo?
$VA$=11243.61*
$i$=36.00% anualizado
$r$=3.000% mensual
$A$=500

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=11243.61
tasaPeriodo=3.003
Anualidad=500
# Calculamos el tiempo:
tiempo=TiempoVaAnualidadesAnticipadasA(VA=valorAct,r=tasaPeriodo,A=Anualidad)
# Imprimimos el resultado :
tiempo
```
### Cálculo de la tasa del periodo en Anualidades Anticipadas con VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:A una persona le prestaron $11,243.61 y debera pagar $500.00 al mes ,durante 36 meses .¿Cual es la tasa mnesual y anualizada que le dieron cuando se realizo el prestamo?
$VA$=11243.61
$n$=36 meses
$A$=500

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=11243.61
nPeriodos=36
Anualidad=500
# Calculamos el tasa:
tasa=tasaAnualidadAnticipadaVA(VA=valorAct,Tpers=nPeriodos,A=Anualidad)
# Imprimimos el resultado :
tasa
```
