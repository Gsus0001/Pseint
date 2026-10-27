// En matriz 3×4, sumar columnas e imprimir qué columna tuvo la máxima suma y su valor (Pseudocódigo) .
Proceso Ejercicio_87
	Definir num, i, j Como Entero;
	Dimensionar num(3,4);
	Definir mayor, sumaCol, posCol Como Entero;
	// Pedimos los elementros de la matriz
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir 'Digite un numero [', i, '] [', j, ']: 'Sin Saltar;
			Leer num[i,j];
		FinPara
	FinPara
	Escribir "";
	// Mostramos los elementos de la matriz
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir num[i,j], ' 'Sin Saltar;
		FinPara
		Escribir ' ';
	FinPara
	// Almacenamos dentro de mayor la suma de los elementos de la primera columna
	sumaCol <- 0;
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		sumaCol <- sumaCol+num[i,0];
	FinPara
	// Por el momento la primera columa es la que tiene la mayor suma
	mayor <- sumaCol;
	posCol <- 0;
	// Ahora vamos a recorrer las demas columas y sumamos
	Para j<-1 Hasta 3 Con Paso 1 Hacer
		sumaCol <- 0;
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			sumaCol <- sumaCol+num[i,j];
			Si sumaCol>mayor Entonces
				mayor <- sumaCol;
				posCol <- j;
			FinSi
		FinPara
	FinPara
	Escribir "";
	Escribir "La columna con la mayor suma es: ",posCol;
	Escribir "La suma de dicha columnas es: ",mayor;
	Escribir "";
FinProceso
