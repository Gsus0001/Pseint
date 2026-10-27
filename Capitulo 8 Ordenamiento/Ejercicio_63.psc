//Ejemplo de Método de Inserción ascendente y descendente.
Proceso Ejercicio_63
	Definir num,i,pos,aux Como Entero;
	Dimensionar num[5];
	
	Escribir "Digite el valor de los elementos del arreglo: ";
	
	Para i <- 0 Hasta 4 con paso 1 Hacer
		Escribir (i+1), ". Digite un numero: ";
		Leer num[i];
	FinPara
	
	Para i<-1 Hasta 3 Con Paso 1 Hacer//Metodo de Isercion
		pos <- i;
		aux <- num[i];
		
		Mientras (pos > 0 y num[pos-1]>aux) Hacer
			num[pos] <- num[pos-1];
			pos <- pos-1;
		FinMientras
		num[pos] <- aux;
	FinPara
	
	Escribir "";
	Escribir "El arreglo esta Ordenado";
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar num[i];
	FinPara
	
	Escribir "";
	Para i<-4 Hasta 0 Con Paso -1 Hacer
		Escribir Sin Saltar num[i];
	FinPara
	Escribir "";

FinProceso

