//Diseñar un algoritmo que tomando como entrada una cadena de texto nos devuelva si es o no un palíndromo. 
//Se conoce que se denomina palíndromo a una palabra o frase que, ignorando los blancos, se lee igual de izquierda a derecha que de derecha a izquierda. (Diagrama N-S) .
Proceso Ejercicio_78
	Definir i Como Entero;
	Definir frase,frase2,fraseReves como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	
	i <- 0;
	frase2 <- " ";
	
	Mientras i < Longitud(frase) Hacer //Elimina los espacios en blando de la cadena
		si Subcadena(frase,i,i) <> " " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
			i<-i+1;
		SiNo
			i<-i+1;
		FinSi
	FinMientras
	
	frase <- frase2;
	
	fraseReves <- " ";//Halla la frase al reves
	Para i<-(Longitud(frase)-1) Hasta 0 Con Paso -1 Hacer
		fraseReves <- Concatenar(fraseReves, Subcadena(frase,i,i));
	FinPara
	
	Si frase = fraseReves Entonces//Por ultimo comparamos ambas cadenas
		Escribir "La cadena es un palindromo: ",frase;
	SiNo
		Escribir "La cadena No es un palindromo: ",frase2;
	FinSi
	
FinProceso
