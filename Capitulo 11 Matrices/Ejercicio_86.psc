// En matriz 4×4, calcular la suma de cada fila y almacenarla en un arreglo, y la suma de cada columna en otro arreglo (Diagrama N-S) .
Proceso Ejercicio_86
	Definir num, i, j Como Entero;
	Dimensionar num(4,4);
	Definir filas, sumasFilas, posFilas Como Entero;
	Dimensionar filas(4);
	Definir columnas, sumaCol, posCol Como Entero;
	Dimensionar columnas(4);
	// Pedimos los elementos de la matriz al usuario
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir 'Digite un numero [', i, '] [', j, ']: ';
			Leer num[i,j];
		FinPara
	FinPara
	// Mostrar matriz
	Escribir '';
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir num[i,j], ' 'Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	// Recorremos la Matriz y sumamos las filas
	posFilas <- 0;
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		sumasFilas <- 0;
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			sumasFilas <- sumasFilas+num[i,j];
		FinPara
		filas[posFilas] <- sumasFilas;
		posFilas <- posFilas+1;
	FinPara
	// Recorremos la matriz y sumamos las columnas
	posCol <- 0;
	Para j<-0 Hasta 3 Con Paso 1 Hacer
		sumaCol <- 0;
		Para i<-0 Hasta 3 Con Paso 1 Hacer
			sumaCol <- sumaCol+num[i,j];
		FinPara
		columnas[posCol] <- sumaCol;
		posCol <- posCol+1;
	FinPara
	// Mostramos el arreglo con las sumas de las filas
	Escribir '';
	Escribir 'La suma de las filas son: 'Sin Saltar;
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir filas[i], ' 'Sin Saltar;
	FinPara
	// Mostramos el arreglo con la suma de las columnas
	Escribir '';
	Escribir 'La suma de las columnas son: 'Sin Saltar;
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir columnas[i], ' 'Sin Saltar;
	FinPara
	Escribir '';
FinProceso
