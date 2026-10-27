// Hacer un programa que tenga un menú con las siguientes opciones(Diagrama N-S):
// Opción 1: Elevar un número a una potencia X
// Opción 2: Sacar la raíz cuadrada de un número
// Opción 3: Salir
Proceso Ejercicio_33
	Definir opcion como entero;
	Escribir "Menu";
	Escribir "1_ Elevar un numero a una potencia x";
	Escribir "2_ Sacar la raiz cuadrada de un numero";
	Escribir "3_ Salir";
	Escribir "Digite una opcion";
	Leer opcion;
	Segun opcion Hacer
		1:
			Definir num,potencia,rod como reales;
			Escribir "Digite el numero: ";
			leer num;
			Escribir "Digite la potencia";
			Leer potencia;
			rod <- num^potencia;
			Escribir "El resultado es: ",rod;
			
		2:
			Definir num,rod como reales;
			Escribir "Digite un numero: ";
			Leer num;
			rod <- rc(num);
			Escribir "El resultado es:", rod;
			
		3:
		De Otro Modo:
			Escribir "Se equivoco deo opcion de menu";
			
	FinSegun
FinProceso
