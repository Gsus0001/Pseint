//Llenando una matriz de 3×4 con ciclos anidados.
Proceso Ejercicio_83
	Definir num,i,j Como Entero;
	Dimensionar num[3,4];
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer//llenado de filas
		//llenando las columnas
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite un numero [",i,"] [",j,"]";
			Leer num[i,j];
		FinPara
	FinPara
	Escribir "";
	//Muestra de matriz
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar num[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinProceso
