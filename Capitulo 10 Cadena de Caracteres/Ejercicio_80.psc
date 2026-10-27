//Sustituir todos los espacios en blanco de una frase por asteriscos (*) (Diagrama de flujo).
Proceso Ejercicio_80
	Definir i Como Entero;
	Definir frase,frase2 como cadena;
	
	Escribir Sin Saltar "Digite una Cadena: ";
	Leer frase;
	
	//Hola que tal es la frase que se debe ingresar
	frase2 <- "";
	
	Para i<-0 Hasta (Longitud(frase)-1) Hacer
		si Subcadena(frase,i,i) != " " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
		SiNo
			frase2 <- Concatenar(frase2,"*");
		FinSi
	FinPara
	
	frase <- frase2;
	
	Escribir "";
	Escribir frase;
FinProceso
