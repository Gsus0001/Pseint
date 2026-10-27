// Matriz 5×5 que almacene "1" en la diagonal principal y "0" en el resto (Diagrama N-S) .
Proceso Ejercicio_89
	Definir matriz, i, j Como Entero;
	Dimensionar matriz(5,5);
	// Lenado de la matriz
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Si i=j Entonces
				matriz[i,j]<-1;
			SiNo
				matriz[i,j]<-0;
			FinSi
		FinPara
	FinPara
	Escribir '';
	// Mostramos la matriz
	Escribir 'La matriz es: ';
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz[i,j], ' 'Sin Saltar;
		FinPara
		Escribir '';
	FinPara
	Escribir '';
FinProceso
