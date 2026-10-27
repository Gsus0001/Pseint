//Llenar matriz 4×4 y determinar la posición (fila, columna) del número mayor (Diagrama de flujo) .
Proceso Ejercicio_85
	Definir num,i,j,mayor,posfila,posCol Como Entero;
	Dimensionar num[4,4];
	
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir Sin Saltar "Digite un numero [",i,"] [",j,"]: ";
			Leer num[i,j];
		FinPara
	FinPara
	
	Escribir "";
	
	//Muestra en la pantalla
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir Sin Saltar num[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	
	mayor <- num[0,0];
	posCol <- 0;
	posfila <- 0;
	
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Si num[i,j] > mayor Entonces
			mayor <- num[i,j];
			posfila <- i;
			posCol <- j;
			FinSi
		FinPara
	FinPara
	
	Escribir "";
	Escribir "La posicion del numero es: ",posfila," Columna: ",posCol;
	Escribir "El numero mayor es: ",mayor;
FinProceso
