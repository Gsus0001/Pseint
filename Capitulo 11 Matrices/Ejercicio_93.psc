//Llenar matriz con números aleatorios, copiarla y mostrarla en pantalla (Pseudocódigo) .
Proceso Ejercicio_93
	Definir matrizA,matrizB,i,j,filas,columnas Como Entero;
	Dimensionar matrizA[100,100],matrizB[100,100];
	
	Escribir Sin Saltar 'Digite la cantidad de filas para la matriz: ';
	Leer filas;
	Escribir Sin Saltar 'Digite la cantidad de columnas para la matriz:  ';
	Leer columnas;
	Escribir "";
	Repetir//Aca se pone limitacion al usuario para que los valores ingresados no sean 0 al momento de crear la matriz 
		Si filas <= 0 y columnas <=0 Entonces
			Escribir "Error las Filas y Columnas deben ser Mayor > 0";
			
			Escribir Sin Saltar "Digite la cantidad de filas para la matriz: ";
			Leer filas;
			Escribir Sin Saltar "Digite la cantidad de columnas para la matriz: ";
			Leer columnas;
		FinSi
	Hasta Que filas > 0 y columnas > 0;
	
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer//Se hace el llenado de la matriz 
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			matrizA[i,j] <- azar(999);
			matrizB[i,j] <- matrizA[i,j];
			Escribir Sin Saltar matrizB[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinProceso
