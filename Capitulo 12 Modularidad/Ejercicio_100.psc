//Ejemplo de parametro por valor, suma 10
Proceso Ejercicio_100
	
	Definir num Como Entero;
	Escribir Sin Saltar "Digite un numero: ";
	Leer num;
	
	Escribir "";
	Escribir "El aumento es: ",aumentar(num);//Argumento
FinProceso


Funcion aumento <- aumentar(num Por Valor)//Parametro
	
	Definir aumento Como Entero;
	
	aumento <- num + 10;
	
FinFuncion
