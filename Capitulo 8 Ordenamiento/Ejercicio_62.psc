//Ejemplo de Método de la Burbuja ascendente y descendente.
Proceso Ejercicio_62
	Definir num,i,j,aux Como Entero;
	Dimensionar num[5];
	Definir ordenado Como Logico;
	
	Escribir "Digite el valor del elemento: ";
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir (i+1), ". Digite un numero: ";
		Leer num[i];
	FinPara
	
	ordenado <- Falso;
	i <- 0;
	
	Mientras (ordenado = Falso y i<=3) Hacer // Mejora el programa haciendolo mas eficiente
		//Otra forma de llamar al ciclo de burbuja seria con el ciclo para pero suele ser menos eficiente
		ordenado <- Verdadero;		
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			
			si num[j] > num[j+1] Entonces
				aux <- num[j];
				num[j] <- num[j+1];
				num[j+1] <- aux;
				ordenado <- Falso;
			FinSi
		FinPara
	FinMientras
	
	
	Escribir "";
	Escribir "El arreglo ordenado es: ";
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar num[i];
	FinPara
	
	Escribir "";
	
	Para i<-4 Hasta 0 Con Paso -1 Hacer
		Escribir Sin Saltar num[i];
	FinPara
	Escribir "";
	
FinProceso

