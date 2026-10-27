// Calcular la suma de 2 matrices cuadradas de 3×3 (Diagrama N-S) .
Proceso Ejercicio_95
	Definir matrizA, matrizB, i, j, valA, valB Como Entero;
	Definir ascV, descV Como Logico;
	Dimensionar matrizA(3,3), matrizB(3,3);
	Escribir 'Debe ingresar una matriz ascendente';
	Repetir
		ascV <- Verdadero;
		Para i<-0 Hasta 2 Hacer
			Para j<-0 Hasta 2 Hacer
				Escribir Sin Saltar 'Digite un numero [', i, '] [', j, ']: ';
				Leer matrizA[i,j];
				Repetir
					// Limitamos al usuario a ingresar valores mayores a 0 en la primera matriz
					Si matrizA[i,j]<=0 Entonces
						Escribir 'Error los datos ingresados deben ser mayor a 0';
						Escribir Sin Saltar 'Digite los valores Ascendente [', i, '] [', j, ']: ';
						Leer matrizA[i,j];
					FinSi
				Hasta Que matrizA[i,j]>0
			FinPara
		FinPara
		// Validamos si la matriz ingresada es Ascendente
		Para valA<-0 Hasta 1 Hacer
			Para valB<-0 Hasta 1 Hacer
				Si matrizA[valA,valB+1]<=matrizA[valA,valB] Entonces
					ascV <- Falso;
				FinSi
			FinPara
		FinPara
		Si (ascV=Falso) Entonces
			Escribir '';
			Escribir 'La matriz ingresada No es Ascendente, Vuelva a ingresar los datos';
		FinSi
	Hasta Que ascV
	Escribir '';
	Escribir 'Debe ingresar una matriz descendente';
	Repetir
		descV <- Verdadero;
		Para i<-0 Hasta 2 Hacer
			Para j<-0 Hasta 2 Hacer
				Escribir Sin Saltar 'Digite un numero [', i, '] [', j, ']: ';
				Leer matrizB[i,j];
				
				// Limitamos al usuario a ingresar valores mayores a 0, en la segunda matriz
				Repetir
					Si matrizB[i,j]<=0 Entonces
						Escribir 'Error los datos ingresados deben ser mayor a 0';
						Escribir Sin Saltar 'Digite los valores Descendente [', i, '] [', j, ']: ';
						Leer matrizB[i,j];
					FinSi
				Hasta Que matrizB[i,j]>0
			FinPara
		FinPara
		// Validamos si la matriz es Descendente
		Para valA<-0 Hasta 1 Hacer
			Para valB<-0 Hasta 1 Hacer
				Si matrizB[valA,valB+1]>=matrizB[valA,valB] Entonces
					descV <- Falso;
				FinSi
			FinPara
		FinPara
		Si (descV=Falso) Entonces
			Escribir '';
			Escribir 'La matris ingresada No es Descendente, Vuelva a ingresar los datos';
		FinSi
	Hasta Que descV
	Escribir "";
	
	// Mostramos las dos matrices
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir Sin Saltar matrizA[i,j],' ';
		FinPara
		Escribir '';
	FinPara
	Escribir "";
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir Sin Saltar matrizB[i,j],' ';
		FinPara
		Escribir '';
	FinPara
	
	Escribir '';
	// Mostramos las matrices sumadas
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir Sin Saltar matrizA[i,j]+matrizB[i,j], ' ';
		FinPara
		Escribir '';
	FinPara
	Escribir '';
FinProceso
