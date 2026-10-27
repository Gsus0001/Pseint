//Leer 2 números; si son iguales multiplicarlos, si el primero es mayor restarlos, sino sumarlos (Pseudocódigo) .
Proceso Ejercicio_29
	Definir num1,num2,resultado1,resultado2,igual Como Real;
	
	Escribir "Digite 2 numeros: ";
	Leer num1,num2;
	
	Si num1 = num2 Entonces
		igual <- num1*num2;
		Escribir "El resultado es: ",igual;
		
	Sino //cuando se utiliza el Falso en la linea SINO debe ser salteada y debajo de la misma de sebe afirmar la operacion que se desea
		si num1 > num2 Entonces
			resultado1 <- num1 - num2;
			Escribir "El resultado es: ",resultado1;
		FinSi
		
		si num1 < num2 Entonces
			resultado2 <- num1 + num2;
			Escribir  "El resultado es: ",resultado2;
		FinSi
		
		
	FinSi
FinProceso 
