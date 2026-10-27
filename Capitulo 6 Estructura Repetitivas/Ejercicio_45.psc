// Calcular la siguiente sumatoria de los "N" elementos: S=1+4+9+? (Diagrama N-S, Ciclo Mientras)
Proceso Ejercicio_45
	
	Definir S, cuadrado Como Real;
	Definir i, num Como Entero;
	
	Escribir 'S = 1² + 2² + 3² + ... + N² <- Formula';//Esta formula hace refencia a sumatoria cuadraticas 
	Escribir "Ingrese N (> 0): ";
	Leer num;
	
	Si num <= 0 Entonces
		Escribir "¡Error! ¨N¨ debe ser mayor a 0";
	SiNo
		S <- 0;
		i <- 1;
		Mientras i <= num Hacer
			S <- S + (i*i);//Aca en la parte de (i*i) hace la multiplicacion explicita
			i <- i + 1;
			
			Escribir "S(", num, ") = 1² + 2² + ... + ",num, "² = ", S;
		FinMientras
	FinSi
	
	
	
FinProceso
