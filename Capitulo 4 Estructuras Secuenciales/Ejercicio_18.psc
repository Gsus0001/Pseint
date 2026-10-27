//Capitulo 3 Calcular la cantidad de segundos que estan incluidos en el numero de horas, minutos, segundos
//Ingresados por el usuario
Proceso Ejercicio_18
	Definir horas,minutos,seg Como Entero;
	Definir horas_seg,minutos_seg,total_seg Como Entero;
	
	Escribir "Digite las horas: ";
	Leer horas;
	Escribir "Digite los minutos: ";
	Leer minutos;
	Escribir "Digite los segundos: ";
	Leer seg;
	
	//Calcular el equivalente en segundos
	
	horas_seg <- horas * 3600;
	minutos_seg <- minutos * 60;
	total_seg <- horas_seg + minutos_seg + seg;
	
	Escribir "Los segundos equivalentes son: ",total_seg;
	
	
FinProceso
