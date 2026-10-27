//Capitulo 3 Radio de un circulo y se reporte su area y la longitud de la circunsferencia.
//area = pi * radio ^ 2
//Longitud = 2 * pi * radio
Proceso Ejercicio_19
	Definir radio,area,lon Como Real;
	Escribir "Digite el valor del radio: ";
	Leer radio;
	
	area <- pi * radio ^ 2;
	lon <- 2 * pi * radio;
	
	Escribir "El area de la circunferencia es: ",area;
	Escribir "La longitud es: ", lon;
FinProceso
