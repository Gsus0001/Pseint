// Llenar matriz entera de 2×2 y copiar su contenido a otra matriz (Diagrama N-S) .
Proceso Ejercicio_92
	Definir i, j Como Entero;
	Definir matrizA, matrizB Como Entero;
	Dimensionar matrizA[2,2], matrizB[2,2];
	// Aca llenamos la primera matriz "matriz A"
	Para i<-0 Hasta 1 Hacer
		Para j<-0 Hasta 1 Hacer
			Escribir Sin Saltar 'Digite un numero [', i, '] [', j, ']: ';
			Leer matrizA[i,j];
		FinPara
	FinPara
	Escribir '';
	// Aca llenamos la segunda matriz "matrizB"
	Para i<-0 Hasta 1 Hacer
		Para j<-0 Hasta 1 Hacer
			matrizB[i,j]<-matrizA[i,j];
			// Condicionales solo para la vista
			Si i=0 Y j=0 Entonces
				// Usar 12 espacios
				Escribir Sin Saltar "            ", matrizB[i,j], ' ';
			SiNo
				// El condicional es solo para una matriz de 2*2
				Si i=1 Y j=0 Entonces
					Escribir Sin Saltar "            ", matrizB[i,j], ' ';
				SiNo
					Escribir matrizB[i,j], ' ';
				FinSi
			FinSi
		FinPara
		
	FinPara
	Escribir '';
FinProceso
