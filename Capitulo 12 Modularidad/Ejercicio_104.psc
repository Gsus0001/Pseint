// Programa para calcular el tipo de cambio de moneda al dólar y viceversa (Diagrama N-S) .
Proceso Ejercicio_104
	menu(.);
	Escribir "";
FinProceso

SubProceso menu(.)
	Definir opcion Como Entero;
	Definir pesos, dolares Como Real;
	Repetir
		Escribir 'Menu';
		Escribir '1. Cabiar Pesos a Dolares';
		Escribir '2. Cambiar a Dolares a Pesos';
		Escribir '3. Salir';
		Escribir '';
		Escribir Sin Saltar 'Digite una opcion de menu: ';
		Leer opcion;
		Escribir '';
		Segun opcion Hacer
			1:
				Escribir Sin Saltar "Digite la cantidad de pesos: ";
				Leer pesos;
				dolares <- cambioADolares(pesos);
				Escribir "El cambio a dolar es: ",dolares,"$";
			2:
				Escribir Sin Saltar "Digite la cantidad de Dolares: ";
				Leer dolares;
				pesos <- cambioDolaresAPesos(dolares);
				Escribir "El cambio a pesos es: $",pesos;
			3:
				
			De Otro Modo:
				Escribir "Se equivoco de opcion de Menu";
		FinSegun
	Hasta Que opcion=3
FinSubProceso

SubProceso dolar <- cambioADolares(pesos)
	Definir dolar Como Real;
	dolar <- pesos/200;
FinSubProceso

SubProceso pesos <- cambioDolaresAPesos(dolares)
	Definir pesos Como Real;
	pesos <- dolares*200;
FinSubProceso

