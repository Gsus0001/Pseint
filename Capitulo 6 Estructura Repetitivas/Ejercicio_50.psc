//Calcular la sumatoria de la serie de Taylor (Diagrama N-S, Ciclo Repetir)
Proceso Ejercicio_50
	
	Definir x,N,i como entero;
	Definir s,termino Como Real;
	
	Escribir "Serie de TAYLOR (e^x)";
	Escribir "e^x = 1 + x/1! + x²/2! + x³/3! + ...";
	Escribir "Ingrese X: ";
	Leer x;
	Escribir "Ingrese numero de terminos: ";
	Leer N;
	
	Si	N <= 0 Entonces
		Escribir "Error debe ser > 0";
	SiNo
		S <- 1;
		termino <- 1;
		i <- 1;
		
		Repetir
			termino <- termino * x / i;
			s <- s + termino;
			
			Escribir " T ", i, " = ",termino, " S = ",S;
			
			i <- i + 1;
		Hasta Que i > N;
		
		Escribir "e^", x, " aprox ", s, " (", N+1, " términos)";
		Escribir "e^", x, " aprox ", S, " (", N+1, " términos)";
	FinSi
FinProceso
