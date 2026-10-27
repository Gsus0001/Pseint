//Leer una frase y contar el número de vocales (de cada una) que aparecen (Diagrama N-S).
Proceso Ejercicio_81
	Definir i,conteoA,conteoE,conteoI,conteoO,conteoU Como Entero;
	Definir frase,letra como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	
	frase <- Minusculas(frase);
	conteoA <-0;
	conteoE <-0;
	conteoI <-0;
	conteoO <-0;
	conteoU <-0;
	
	Para i<-0 Hasta (Longitud(frase)-1) Hacer //A este formato de programacion se lo conoce como anidado
		letra <- Subcadena(frase,i,i);
		Si letra = "a" Entonces
			conteoA <- conteoA +1;
		SiNo
			Si letra = "e" Entonces
				conteoE <- conteoE + 1;
			SiNo
				Si letra = "i" Entonces
					conteoI <- conteoI + 1;
				SiNo
					Si letra = "o" Entonces
						conteoO <- conteoO + 1;
					SiNo
						Si letra = "u" Entonces
							conteoU <- conteoU + 1;
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	
	Escribir "";
	Escribir "Conteo de la Vocal A: ",conteoA;
	Escribir "Conteo de la Vocal E: ",conteoE;
	Escribir "Conteo de la Vocal I: ",conteoI;
	Escribir "Conteo de la Vocal O: ",conteoO;
	Escribir "Conteo de la Vocal U: ",conteoU;
FinProceso
