// Elaborar un programa que me muestre el significado de aniversario de cada década hasta los 60
// Bodas de Hojalata 10 años
// Boda de Porcelana 20 años
// Boda de Perlas 30 años
// Boda de Rubi 40 años
// Boda de Oro 50 años
// Boda de Diamante 60 años
Proceso Ejercicio_32
	Definir decada Como Entero;
	Escribir "Digite una decada: ";
	Leer decada;
	Segun decada Hacer
		10:
			Escribir "Boda de Hojalata";
		20:
			Escribir "Boda de Porcelana";
		30:
			Escribir "Boda de Perlas";
		40:
			Escribir "Boda de Rubi";
		50:
			Escribir "Boda de Oro";
		60:
			Escribir "Boda de Diamante";
		De Otro Modo:
			Escribir "Decada No Existente";
	FinSegun
FinProceso
