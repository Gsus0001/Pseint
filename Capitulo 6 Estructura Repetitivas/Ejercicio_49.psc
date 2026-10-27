//Imprimir la serie de los "N" términos de la serie de Fibonacci (Diagrama de flujo, Ciclo Repetir) 
Proceso Ejercicio_49
	Definir ant1, ant2, actual Como Entero;
	Definir N, i Como Entero;
	Escribir 'Ingrese la cantidad de terminos que desea: ';
	Leer N;
	Si N<=0 Entonces
		Escribir 'Error debe ser mayor que 0';
	SiNo
		Si N = 1 Entonces
			Escribir "Fabonacci ( ", N," ): 1";
		SiNo
			Escribir Sin Saltar 'Fibonacci (', N, '):1, 1';
			ant1 <- 1;
			ant2 <- 1;
			i <- 3;
			Repetir
				actual <- ant1+ant2;
				Escribir Sin Saltar ", ",actual;
				ant2 <- ant1;//Despazamos las variables
				ant1 <- actual;
				i <- i + 1;
			Hasta Que i > N//Limite es de 45 ya que ocurre un descordamiento de Entero
			Escribir "";
		FinSi
	FinSi
FinProceso
