// Menú con opciones: potenciación, raíz cuadrada y terminar. Cada opción realizada con función o procedimiento (Diagrama de flujo) .
Proceso Ejercicio_103
	menu(.);
	Escribir "";
FinProceso

SubProceso  menu(.)
	Definir opcion Como Entero;
	Definir num, exponente Como Real;
	Repetir
		Escribir 'MENU';
		Escribir '';
		Escribir '1. Potenciación';
		Escribir '2. Raiz Cuadrada';
		Escribir '3. Salir';
		Escribir "";
		Escribir 'Digite una opcion: 'Sin Saltar;
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir Sin Saltar "Digite un numero: ";
				Leer num;
				Escribir Sin Saltar "Digite un exponente: ";
				Leer exponente;
				Escribir "La potencia es: ",potencia(num,exponente);
			2:
				Escribir Sin Saltar "Digite un numero: ";
				Leer num;
				Escribir "La raiz cuadra es: ",raizCuadrada(num);
			3:
			De Otro Modo:
				Escribir "La opcion selecccionada no corresponde";
		FinSegun
		Escribir "";
	Hasta Que opcion=3
FinSubProceso

SubProceso pot <- potencia(num,exponente)
	Definir pot como real;
	pot <- num^exponente;
FinSubProceso

SubProceso raiz_C <- raizCuadrada(num)
	Definir raiz_C como real;
	raiz_C <- rc(num);
FinSubProceso
