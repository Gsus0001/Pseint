//Un alumno desea saber cual sera su calificacion  Final 
//En la materia de Algoritmo . Dicha calificacion se compone de los siguientes porcentajes: 
//55% del promedio de sus tres calificaciones parciales
//30% de la calificacion del examen Final 
//15$ de la calificacion de un trabajo final 
Proceso Ejercicio_23
	
	Definir Parcial_1,Parcial_2,Parcial_3,Promedio_P,Nota_Parcial Como Real;
	Definir Examen_Final,Nota_Examen Como Real;
	Definir Nota_Trabajo,Nota_Final_Trabajo Como Real;
	Definir Nota_Final Como Real;
	
	Escribir "Digite las tres notas de los Parciales: ";
	Leer Parcial_1,Parcial_2,Parcial_3;
	
	Promedio_P <- (Parcial_1 + Parcial_2 + Parcial_3) / 3;
	Nota_Parcial <- Promedio_P * 0.55;
	
	Escribir "Digite la nota del examen Final: ";
	Leer Examen_Final;
	
	Nota_Examen <- Examen_Final * 0.3;
	
	Escribir "Digite la nota del trabajo Final: ";
	Leer Nota_Trabajo;
	
	Nota_Final_Trabajo <- Nota_Trabajo * 0.15;
	Nota_Final <- Nota_Parcial + Nota_Examen + Nota_Final_Trabajo;
	
	Escribir "La calificacion es: ", Nota_Final;
	
FinProceso
