//Fusionar dos arreglos de 5 números enteros ordenados en un tercero, manteniendo el orden (Pseudocódigo) .  
Proceso Ejercicio_61
	Definir i,j,k Como Entero;
	Definir creciente Como Logico;
	Definir a,b,c Como entero;
	Dimensionar a[5], b[5], c[10];
	
	Escribir "Digite los elementos del primer arreglo: ";
	
	Repetir
		
		creciente <- Verdadero;
		Para i<-0 Hasta 4 Con Paso 1 Hacer //Guarda el primer arreglo 1 
			Escribir i," . Digite un numero: ";
			Leer a[i];
		FinPara
		
		//Comprueba si esta ordenado
		Para i<-0 Hasta 3 Con Paso 1 Hacer //Guarda el segundo arreglo decreciente 3-2-1...
			si a[i] > a[i+1] Entonces
				creciente <- falso;
			FinSi
		FinPara
		
		Si	creciente = falso Entonces
			Escribir "Arreglo desordenado, vuelva a digitarlo";
		FinSi
	Hasta Que creciente = Verdadero
	
	Escribir "Digite los elementos del segundo arreglo: ";
	
	Repetir
		
		creciente <- Verdadero;
		Para i<-0 Hasta 4 Con Paso 1 Hacer //Guarda el primer arreglo 2
			Escribir i," . Digite un numero: ";
			Leer b[i];
		FinPara
		
		//Comprueba si esta ordenado
		Para i<-0 Hasta 3 Con Paso 1 Hacer //Guarda el segundo arreglo decreciente 3-2-1...
			si b[i] > b[i+1] Entonces
				creciente <- falso;
			FinSi
		FinPara
		
		Si	creciente = falso Entonces
			Escribir "Arreglo desordenado, vuelva a digitarlo";
		FinSi
	Hasta Que creciente = Verdadero
	i <- 0;//Para el arreglo a
	j <- 0;//Para el arreglo b
	k <- 0;//Para el arreglo c
	
	Mientras (i<5 y j<5) Hacer
		
		si a[i] < b[j] Entonces
			c[k] <- a[i];
			i <- i + 1;
		SiNo
			c[k] <- b[j];
			j <- j + 1;
		FinSi
		k <- k + 1;
	FinMientras
	
	Si (i=5) Entonces
		Mientras (j<5) Hacer
			c[k] <- b[j];
			j <- j+1;
			k <- k+1;
		FinMientras
	SiNo
		si (j=5) Entonces
			Mientras (i<5) Hacer
				c[k] <- a[i];
				i <- i +1;
				k <- k + 1;
			FinMientras
		FinSi
	FinSi
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer // Aca se muestra el arreglo C
		Escribir i,". Elemento: ",c[i];
	FinPara
	
FinProceso
