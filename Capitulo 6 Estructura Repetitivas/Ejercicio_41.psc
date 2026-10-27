// Diseñar un programa que determine si un año es bisiesto o no, repitiendo la acción hasta que el usuario lo decida (Diagrama de flujo, Ciclo Para) .
Proceso Ejercicio_41
	Definir num, opcion Como Entero;
	Escribir 'Comprobamos que año es bisiesto';
	Repetir
		Escribir 'Ingrese el año';
		Leer num;
		Si ((num MOD 4=0) Y (num MOD 100<>0) O num MOD 400=0) Entonces
			Escribir 'El año es Bisiesto';
		SiNo
			Escribir 'El año no es Bisiesto';
		FinSi
		Escribir 'Para seguir adelante digite la opcion 1: ';
		Leer opcion;
	Hasta Que opcion<>1
FinProceso
