//Ejemplo de Búsqueda Secuencial con arreglo desordenado.
Proceso Ejercicio_65
	Definir encontrado Como Logico;
	Definir num,i,posicion,dato Como Entero;
	Dimensionar num[5];
	
	Escribir "Digite los elementos del arreglo";
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin saltar (i+1),". Digite un numero: ";
		Leer num[i];
	FinPara
	
	Escribir "";
	Escribir "Digite un elemento a buscar: ";
	Leer dato;
	
	encontrado <- falso;
	i<-0;
	
	Mientras (i<5 y encontrado = Falso) Hacer//Busqueda Secuencial
		Si (num[i] = dato) Entonces
			encontrado <- Verdadero;
			posicion <- i+1;
		FinSi
		i <- i + 1;
	FinMientras
	
	Si encontrado =Verdadero Entonces
		Escribir "El elemento", dato, " Si Existe en el arreglo, posicion: ",posicion;
	SiNo
		Escribir "El elemento No Existe en el arreglo";
	FinSi
	
FinProceso
