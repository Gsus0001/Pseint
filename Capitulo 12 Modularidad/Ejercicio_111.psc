//Implementar un subprograma recursivo que permita sumar los dígitos de un número (Diagrama N-S). 
Proceso Ejercicio_111
	
	Definir num Como Entero;
	
	num<-0; 
	//primero pedimos los datos al usuario
	pedirDatos(num);
	//Ahora, sumamos los digitos del nuemro
	Escribir "La suma es: ",sumarDigitos(num);
	
FinProceso

SubProceso pedirDatos(num Por Referencia)
	
	Escribir Sin Saltar "Digitar los datos: ";
	Leer num;
FinSubProceso

SubProceso retorno <- sumarDigitos(num)
	
	Definir retorno Como Entero;
	
	Si num=0 Entonces
		//Caso Base
		retorno <- num;
	SiNo
		//Caso recursivo
		retorno <- sumarDigitos(trunc(num/10)) + (num mod 10);
	FinSi
	
	
	
FinSubProceso
