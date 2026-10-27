//Contabilizar cuántas veces se repite una subcadena dentro de una frase (Pseudocódigo) .
Proceso Ejercicio_82
	Definir i,contador Como Entero;
	Definir frase, subFrase,palabra como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	Escribir Sin Saltar "Digite una palabra a buscar en la frase: ";
	Leer subFrase;
	
	i <- 0;
	contador <-  0;
	
	Mientras i <Longitud(frase) Hacer
		palabra <- "";
		Si Subcadena(frase,i,i) != " " Entonces // Almacena la palabra completa dentro de la varialbe palabra
			Mientras Subcadena(frase,i,i) != " " y i<Longitud(frase) Hacer
				palabra <- Concatenar(palabra,Subcadena(frase,i,i));
				i <- i+1;
			FinMientras
			
			Si palabra = subFrase Entonces
				contador <- contador + 1; 
			FinSi
		SiNo
			//Es un espacio
			Mientras Subcadena(frase,i,i) = " " y i <Longitud(frase) Hacer
				i <- i + 1;
			FinMientras
		FinSi
	FinMientras
	
	Escribir "";
	Escribir "La Palabra: ",subFrase," se repite ",contador," veces";
	
FinProceso
