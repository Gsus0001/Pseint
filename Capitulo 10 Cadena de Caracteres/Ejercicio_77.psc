//Cambiar una cadena de caracteres al revés (Diagrama de flujo).
Proceso Ejercicio_77
	Definir i Como entero;
	Definir frase,frase1 como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	
	frase1 <- "";
	
	Para i <-(Longitud(frase)-1) Hasta 0 Con Paso -1 Hacer
		frase1 <- Concatenar(frase1,Subcadena(frase,i,i));
	FinPara
	
	frase <- frase1;
	
	Escribir "La cadenda al reves es: ",frase;
FinProceso
