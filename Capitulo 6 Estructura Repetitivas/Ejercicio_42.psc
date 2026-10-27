// Leer 10 números e imprimir cuantos son positivos, negativos y neutros (Diagrama N-S, Ciclo Para) .
Proceso Ejercicio_42
	Definir num1, num2, i, num_positivos, num_negativos, num_neutro Como Entero;
	
	num_negativos <- 0;
	num_neutro <- 0;
	num_positivos <- 0;
	
	Escribir 'Ingrese 10 numeros: ';
	Para i<-1 Hasta 10 Hacer
		Escribir Sin Saltar 'Numero ', i, ' : ';
		Leer num1;
		Si num1>0 Entonces
			num_positivos <- num_positivos+1;
		SiNo
			Si num1<0 Entonces
				num_negativos <- num_negativos+1;
			SiNo
				num_neutro <- num_neutro + 1;
			FinSi
		FinSi
	FinPara
	Escribir "Resultados Positivos: ",num_positivos;
	Escribir "Resultados Negativos: ",num_negativos;
	Escribir "Resultados Nuetros: ",num_neutro;
FinProceso
