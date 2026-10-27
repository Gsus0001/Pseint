//Procedimiento para dividir un numero a la mitad
Proceso Ejercicio_99
	Definir num Como Real;
	Escribir Sin Saltar "Digite un numero: ";
	Leer num;
	
	Escribir "";
	mitad(num);
	
FinProceso

SubProceso mitad (num)
	Definir m Como Real;
	
	m <- num/2;
	
	Escribir "La mitad del numero es: ",m;
FinSubProceso
