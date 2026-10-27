//Calcular el factorial de un número mayor o igual a 0 (Pseudocódigo, Ciclo Mientras) .
Proceso Ejercicio_44
	
	Definir num, i Como Entero;
	Definir factorial Como Real;
	
	Escribir "Ingrese un digito: ";
	Leer num;
	
	Si num < 0 Entonces
		Escribir "Error, el numero debe ser mayor o igual a 0";
		
	SiNo		
		factorial <- 1;
		i <- 1;
		
		Mientras i <= num Hacer
			factorial <- factorial * i;
			i <- i + 1;
			
		FinMientras
		
		Escribir "El Factorial de ", num," (",num,"!) es: ",factorial;
		Escribir "(", num, "! = ", factorial,")";
		
	FinSi
	
	
	
FinProceso
