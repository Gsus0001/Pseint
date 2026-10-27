// Calcular la suma de los "N" términos de la siguiente serie: (serie convergente; serie armónica alternante o serie de Leibniz) (Diagrama de flujo, Ciclo Repetir)
Proceso Ejercicio_47
	Definir N, i Como Entero;
	Definir s, termino, signo Como Real;
	
	Escribir 'Serie Leibniz (PI/4):';
	Escribir 'Ingrese los numeros del Termino: (N > 0): ';
	Leer N;
	
	Si N<=0 Entonces
		Escribir 'Error ¨N¨ debe ser mayor o igual a 0';
		
	SiNo
		s <- 0;
		i <- 1;
		signo <- 1;
		
		Repetir
			termino <- signo / i;
			s <- s + termino;
			
			Escribir "Termino ", i, ": ", termino, " S = ",S;
			
			i <- i + 1;
			signo <- -signo; //La formula Real es (-1)^(i+1)/i pero esta formula no funciona en Pseint por lo que para alternar el - se usa -signo
			
		Hasta Que i > N
		
		Escribir "Resultado: ";
		Escribir "S(", N, ") = ", S;
       
	FinSi
FinProceso
