//Ejemplo de parametro por referencia, suma 10
Proceso Ejercicio_101
	Definir num Como Entero;
	pedirDatos(num);
	
	Escribir "El aumento es: ",aumentar(num);//Argumento
	
FinProceso

SubProceso pedirDatos(num Por Referencia)//parametro
	Escribir Sin Saltar "Digite un numero: ";
	Leer num;
	
FinSubProceso

Funcion aumento <- aumentar(num Por Valor)//Parametro
	
	Definir aumento Como Entero;
	
	aumento <- num + 10;
	
FinFuncion
	