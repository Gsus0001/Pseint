//Rellenar una matriz pidiendo al usuario filas y columnas, y mostrarla (Pseudocódigo) .
Proceso Ejercicio_90
	Definir matriz,filas,columnas,i,j Como Entero;
	Dimensionar matriz[100,100];//Esto cunado no sabemos la dimencion 
	
	//Pedimos el numero de filas
	
	Escribir "Digite el numero de filas para la matriz: ";
	Leer filas;
	//Pedimos el numero de columna al usuario
	
	Escribir "Digite el numero de columnas para la matriz: ";
	Leer columnas;
	// Lenado de la matriz
	
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1  Hacer
			Escribir Sin Saltar 'Digite un numero [', i, '] [', j, ']: ';
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	// Mostramos la matriz
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i,j]," ";
		FinPara
		Escribir '';
	FinPara
	Escribir "";	
	
FinProceso
