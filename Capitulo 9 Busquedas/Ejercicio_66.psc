//Ejemplo de Búsqueda Binaria con arreglo ordenado.
Proceso Ejercicio_66
	
	Definir encontrado, creciente Como Logico;
	Definir inf,sup,i,mitad,posicion,num,dato Como Entero;
	Dimensionar num[5];
	
	Escribir "Digite los elelmentos del arreglo ascendentemente: ";
	
	Repetir
		creciente <- Verdadero;
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar i,". Digite un numero: ";
			Leer num[i];
		FinPara
		
		Para i<-0 Hasta 3 Con Paso 1 Hacer//Comprueba si el arreglo esta en forma ascendente
			Si num[i] > num[i+1] Entonces
				creciente <- Falso;
			FinSi
		FinPara
		
		si creciente = Falso Entonces
			Escribir "El arreglo esta desordenado, vuelva a digitarlo";
		FinSi
		
	Hasta Que creciente = Verdadero
	
	Escribir "";
	Escribir "Digite el dato a buscar: ";
	Leer dato;
	
	encontrado <- Falso;
	inf <- 0;
	sup <- 5;
	i <- 0;
	mitad <- trunc((inf+sup)/2);
	
	Mientras (inf<=sup y i<5 y encontrado = falso) Hacer//Busqueda Binaria
		si (num[mitad] = dato) Entonces
			encontrado <- Verdadero;
			posicion <- mitad;
		SiNo
			Si (num[mitad] > dato) Entonces
				sup <- mitad;
				mitad <- trunc((inf+sup) /2);
			SiNo
				inf <- mitad;
				mitad <- trunc((inf+sup)/2);
			FinSi
		FinSi
		i<-i+1;
	FinMientras
	
	Si (encontrado = Verdadero) Entonces
		Escribir "El elemento ha sido encontrado en la posicion: ",posicion;
		
	SiNo
		Escribir "El elemento No ha sido encontrado";
	FinSi
FinProceso
