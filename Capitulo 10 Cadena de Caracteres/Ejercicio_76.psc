//Eliminar los espacios en blanco de un texto (Pseudocódigo).
Proceso Ejercicio_76
	Definir frase,frase1 como cadena;
	Definir i como entero;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	
	i<-0;
	frase1 <- " ";//MUY IMPORTANTE RESTEPETAR LOS MALDISTOS ESPACIOS!!!!!!!!
	
	Mientras (i<Longitud(frase)) Hacer
		Si Subcadena(frase,i,i)= " " Entonces//MUY IMPORTANTE RESTEPETAR LOS MALDISTOS ESPACIOS!!!!!!!!
			i <- i+1;
		SiNo
			frase1 <- Concatenar(frase1,Subcadena(frase,i,i));
			i <- i+1;
		FinSi
	FinMientras
	
	frase <- frase1;
	
	Escribir "La cadena sin espacio es: ",frase;
FinProceso
