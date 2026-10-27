//Almacenar números en una matriz de 3×4 e imprimir la suma de los números pares (Pseudocódigo) .
Proceso Ejecicio_84
	Definir num,i,j,suma Como Entero;
	Dimensionar num[3,4];
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer//Pedimos los elementos de la matriz
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite un numero [",i,"] [",j,"]: ";//NOTA MENTAL DESPUES DE J VA LA -> , <-!!!
			Leer num[i,j];
		FinPara
	FinPara
	
	Escribir "";
	//llenamos la matriz
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer//Pedimos los elementos de la matriz
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar num[i,j]," ";
			
		FinPara
		Escribir "";
	FinPara
	
	//Suma los elementos pares de la matriz
	suma <-0;
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Si num[i,j] mod 2=0 Entonces
				suma <- suma + num[i,j];
			FinSi
		FinPara
	FinPara
	
	Escribir "";
	Escribir "La suma de los pares es: ",suma;
FinProceso

