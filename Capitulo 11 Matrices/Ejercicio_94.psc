//Leer una matriz de 3×3 y crear su matriz traspuesta (Diagrama de flujo) .
Proceso Ejercicio_94
	Definir matriz,i,j Como Entero;
	Dimensionar matriz[3,3];
	
	//llenamos la matriz
	Para i <- 0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir Sin Saltar "Digite un numero [",i,"] [",j,"]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	
	Escribir "";
	//Mostrar matriz transpuesta
	
	Para i <- 0 Hasta 2 Hacer
		Para j <-0 Hasta 2 Hacer
			Escribir Sin Saltar matriz[j,i]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
FinProceso
