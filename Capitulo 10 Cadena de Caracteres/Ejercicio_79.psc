//Ingresar una frase y convertir el primer carácter de cada palabra de minúscula a mayúscula (Pseudocódigo) .
Proceso Ejercicio_79
	Definir i Como Entero;
	Definir frase,frase2 como cadenas;
	
	Escribir "Digite una cadena: ";
	Leer frase;
	
	frase2 <- "";
	
	frase2 <- Concatenar(frase2, Mayusculas(Subcadena(frase,0,0)));//Primero transformaos el primer caracter a mayuscula
	
	i <- 1;
	
	Mientras i <Longitud(frase) Hacer
		
		si Subcadena(frase,i,i) != " " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
			i <- i + 1;
			
		SiNo
			Mientras Subcadena(frase,i,i) = " " Hacer//Significa que el caracter es un espacio
				frase2 <- Concatenar(frase2, " ");
				i <- i +1;
				
			FinMientras
			
			frase2 <- Concatenar(frase2,Mayusculas(Subcadena(frase,i,i)));
			i <- i + 1;
			
		FinSi
	FinMientras
	
	frase <- frase2;
	
	Escribir "";
	Escribir frase;
FinProceso
