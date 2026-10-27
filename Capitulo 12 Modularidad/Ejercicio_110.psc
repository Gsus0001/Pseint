//Implementar un subprograma recursivo que realice la serie Fibonacci (Diagrama de flujo).
//0 1 1 2 3 5 8 13 21 ...
Proceso Ejercicio_110
	Definir nElementos Como Entero;
	//Pediremos los datos al usuario
	pedirDatos(nElementos);
	//Ahora, mostramos la serie
	mostrarSerie(nElementos);
	Escribir "";
	
FinProceso

SubProceso pedirDatos(nElementos Por Referencia)
	
	Escribir Sin Saltar "Digite el numero de elementos: ";
	Leer nElementos;
	
FinSubProceso

SubProceso mostrarSerie(nElementos)
	
	Definir i Como Entero;
	
	Escribir "";
	Escribir "La serie Fibonacci es: ";
	Escribir Sin Saltar "0 ";
	
	Para i <-1 Hasta nElementos -1 Hacer
		Escribir Sin Saltar fibonacci(i)," ";
		
	FinPara
	
	
FinSubProceso

SubProceso retorno <- fibonacci(num)
	
	Definir retorno Como Entero;
	
	Si num = 1 o num = 2 Entonces
		retorno <-1; //Caso Base
		
	SiNo
		retorno <- fibonacci(num-1) + fibonacci(num-2);//Caso recursivo
	FinSi
	
	
FinSubProceso
