//Ejemplo de recursividad con factorial, paso a paso.
Proceso Ejercicio_108
	
	Definir num Como Entero;
	Escribir Sin Saltar "Digite un numero: ";
	Leer num;
	
	Escribir "";
	Escribir "El Factorial del numero es: ",factorial(num);
	
FinProceso

Funcion retorno <- factorial(num)
	
	Definir retorno Como Entero;
	//Caso Base de la Recursividad
	Si num = 0 Entonces
		retorno <- 1;
	//Caso Recursivo
	SiNo
		retorno <- num * factorial(num-1);
	FinSi
	
FinFuncion
