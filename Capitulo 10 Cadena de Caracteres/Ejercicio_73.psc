//Diseñe un programa que permita ingresar una cadena de caracteres y detecte cuántas vocales tiene (Pseudocódigo).
Proceso Ejercicio_73
	Definir i,j,conteoVocales Como Entero;
	Definir frase,vocales como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	
	frase <- Minusculas(frase);
	
	vocales <-"aeiou";
	conteoVocales <- 0;
	
	Para i<-0 Hasta (Longitud(frase)-1) Con Paso 1 Hacer
		
		Para j<-0 Hasta (Longitud(vocales)-1) Con Paso 1 Hacer
			
			si (Subcadena(frase,i,i) = Subcadena(vocales,j,j)) Entonces
				conteoVocales <- conteoVocales +1;
			FinSi
		FinPara
	FinPara
	
	Escribir "El nuemero de vocales en la cadena es: ", conteoVocales;
FinProceso
