// Llenar matriz 4×4, almacenar la diagonal principal en un arreglo e imprimirlo (Diagrama de flujo) .
Proceso Ejercicio_88
	Definir i, j, pos Como Entero;
	Definir matriz, arreglo Como Caracter;
	Dimensionar matriz(4,4), arreglo(4);
	
	// Lenado de la matriz
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir Sin Saltar 'Digite un numero [', i, '] [', j, ']: ';
			Leer matriz[i,j];
		FinPara
	FinPara
	Escribir '';
	// Mostramos la matriz
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir Sin Saltar matriz[i,j]," ";
		FinPara
		Escribir '';
	FinPara
	// Recorremos la matriz y copiamos la diagonal
	pos <- 0;
	Escribir "";
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Si i=j Entonces
				arreglo[pos] <- matriz[i,j];
				pos <- pos+1;
			FinSi
		FinPara
	FinPara
	// Por ultimo, mostramos el arreglo
	Escribir '';
	Escribir ' Los elementos de la diagonal son: 'Sin Saltar;
	Para i<-0 Hasta 3 Hacer
		Escribir arreglo[i], ' 'Sin Saltar;
	FinPara
	Escribir '';
FinProceso
