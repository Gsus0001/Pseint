//Crea un arreglo unidimensional con un tamaño de 5 (reales), preguntar valores y calcular suma y promedio (Pseudocódigo) .
Proceso Ejercicio_53
	Definir i Como Entero;
	Definir numReales,suma,promedio como real;
	Dimensionar numReales[5];
	
	suma <- 0;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir i, ". Digite un Numero: ";
		Leer numReales[i];
		
		suma <- suma + numReales[i];
	FinPara
	
	promedio <- suma/5;
	
	Escribir "La suma es: ", suma;
	Escribir "El promedio es: ", promedio;
	
FinProceso
