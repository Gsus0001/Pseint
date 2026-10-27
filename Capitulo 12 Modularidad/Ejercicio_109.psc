//Escribir una función recursiva para elevar un número a una potencia (Pseudocódigo).
Proceso Ejercicio_109
	
	Definir base,exponente Como Entero;
	
	pedirDatos(base,exponente);//Pedimos datos al usuario
	Escribir "La potencia es: ",potencia(base,exponente);//Llamamos a la Funcion potencia
	
FinProceso

SubProceso pedirDatos(base Por Referencia,exponente Por Referencia)
	
	Escribir Sin Saltar "Digite una base: ";
	Leer base;
	Escribir Sin Saltar "Digite un exponente: ";
	Leer exponente;
	Escribir "";
	
FinSubProceso

Funcion retorno<- potencia(base,exponente)
	
	Definir retorno Como Entero;
	//Caso base
	Si exponente=0 Entonces
		
		retorno <- 1;
	//caso recursivo
	SiNo
		retorno <- base * potencia(base,exponente-1);//Argumentos
	FinSi
	
	
	
FinFuncion
	