//Capitulo 3 Un profesor prepara tres cuestionarios para una evaluacion final: A,B,C. Se sabe que tarda 5 minutos en revisar el custionario A, 8 en revisar el Cuestionario B
//y 6 en el C. La cantidad de examenes de cada tipo se entran por teclado ¿Cuantas horas y minutos se tardara en revisar tolas las evaluaciones?
Proceso Ejercicio_21
	Definir Cantidad_A,Cantidad_B,Cantidad_C Como Entero;
	Definir tiempo_A,tiempo_B,tiempo_C Como Entero;
	Definir tiempo_Total, horas, minutos como entero;
	
	Escribir "Digite la cantidad de cuestionarios A: ";
	Leer Cantidad_A;
	Escribir "Digite la cantidad de cuestionarios B: ";
	Leer Cantidad_B;
	Escribir "Digite la cantidad de cuestionarios C: ";
	Leer Cantidad_C;
	
	//Calcular los minutos que se tardara por cada cuestionario
	
	tiempo_A <- Cantidad_A * 5;
	tiempo_B <- Cantidad_B * 8;
	tiempo_C <- Cantidad_C * 6;
	
	//Calcular el tiempo total que le toma revisar todos los cuestionarios
	
	tiempo_Total <- tiempo_A + tiempo_B + tiempo_C;
	
	//Calcular las horas y minitos
	
	horas <- trunc(tiempo_Total/60);
	minutos <- tiempo_Total mod 60;
	
	Escribir "Se tardara ", horas," Horas y ",minutos, " Minutos";
	
	
FinProceso
