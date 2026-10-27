//Ingresar "N" números, calcular el máximo y mínimo de ellos (Pseudocódigo, Ciclo Repetir) .
Proceso Ejercicio_48
	
	Definir N,i Como Entero;
	Definir num,cal_max,cal_min Como Real;
	
	Escribir "Ingrese la cantidad de numeros: ";
	Leer N;
	
	Si N <= 0 Entonces
		Escribir "Error ¨N¨ debe ser mayor o igual a 0";
		
	SiNo
		Escribir "Numero 1: ";
		Leer num;
		
		cal_max <- num;
		cal_min <- num;
		i <- 2;
		
		Repetir
			Escribir "Numero ", i, ": ";
			Leer num;
			
			Si num > cal_max Entonces //Calcula el Maximo
				cal_max <- num;
			FinSi
			
			Si num < cal_min Entonces//Calcula el minimo
				cal_min <- num;
			FinSi
			i <- i +1;
			
		Hasta Que i > N
		
		Escribir "De numeros: ", N;
		Escribir "Maximo: ", cal_max;
		Escribir "Minimo: ", cal_min;
	FinSi
FinProceso
