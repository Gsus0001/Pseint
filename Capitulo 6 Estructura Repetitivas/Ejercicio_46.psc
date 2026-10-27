//Ingresar "N" enteros, visualizar la suma y cantidad de números pares, y el promedio de los impares (Pseudocódigo, Ciclo Mientras) .
Proceso Ejercicio_46
	
	Definir N,i,num, cont_pares,cont_impares Como Entero;
	Definir suma_total,suma_impares,promedio_impares Como Real;
	
	Escribir "Ingrese la cantidad de numeros (N > 0)";
	Leer N;
	
	Si N <= 0 Entonces
		
		Escribir "Error, N debe ser mayor a 0";
		
	SiNo
		suma_total <- 0;
		cont_pares <- 0;
		suma_impares <- 0;
		cont_impares <- 0;
		i <- 1;
		
		Mientras i <= N Hacer
			
			Escribir "Numero ",i," de ",N,": ";
			Leer num;
			
			suma_total <- suma_total + num;
			
			Si num MOD 2 = 0 Entonces
				cont_pares <- cont_pares + 1;
				
			SiNo
				suma_impares <- suma_impares + num;
				cont_impares <- cont_impares + 1;
			FinSi
			
			i <- i + 1;
		
		FinMientras
		
		Si cont_impares > 0 Entonces
			promedio_impares <- suma_impares  / cont_impares;
			
		SiNo
			promedio_impares <- 0;
			
		FinSi
		
		Escribir "Resultados: ";
		Escribir "Total numeros ingresados: ", N;
		Escribir "Suma Total: ", suma_total;
		Escribir "Cantidad de Pares: ", cont_pares;
		Escribir "Promedio de Impares: ", promedio_impares;
		
	FinSi
FinProceso
