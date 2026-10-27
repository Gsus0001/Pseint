// Calcular la longitud de 2 cadenas y mostrar la cadena más larga (Diagrama de flujo) .
Proceso Ejercicio_74
	Definir frase1,frase2 como caracter;
	Escribir "Digite una cadena: ";
	Leer frase1;
	Escribir "Digite otra cadena:";
	Leer frase2;
	Escribir "";
	
	Si longitud(frase1)=Longitud(frase2) Entonces
		Escribir "Ambas cadena tiene la misma longitud";
	SiNo
		Si Longitud(frase1)>Longitud(frase2) Entonces
			Escribir frase1;
			
			Escribir "Su longitud es: ",longitud(frase1);
		SiNo
			Escribir frase2;
			
			Escribir "Su longitud es: ",Longitud(frase2);
		FinSi
	FinSi
FinProceso
