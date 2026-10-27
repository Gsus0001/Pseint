// Calcular independientemente la suma de los números pares e impares comprendidos entre 1 y 50 (Diagrama N-S, Ciclo Para).
Proceso Ejercicio_39
	Definir Suma_pares,Suma_Impares,i Como entero;
	Suma_pares <- 0;
	Suma_impares <- 0;
	Para i<-2 Hasta 49 Hacer
		Si i mod 2 = 0 Entonces
			Suma_pares <- Suma_pares + i;
		SiNo
			Suma_impares <- Suma_impares + i;
		FinSi
		Escribir "La Suma de pares es: ",suma_pares;
	FinPara
	Escribir "La suma de impares es: ", suma_impares;
FinProceso
