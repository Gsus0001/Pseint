// Capitulo 3 Un maestro desea saber que porcentaje de hombres y que porcentaje de mujeres hay en un grupo  (Diagrama N-S)
Proceso Ejercicio_20
	Definir num_hombres,num_mujeres Como entero;
	Definir total_estudiantes Como Entero;
	Definir porcentajeH,porcentajeM Como real;
	Escribir "Digite el numero de Hombres: ";
	Leer num_hombres;
	Escribir "Digite el numero de Mujeres: ";
	Leer num_mujeres;
	
	total_estudiantes <- num_hombres + num_mujeres;
	porcentajeH <- num_hombres/total_estudiantes * 100;
	porcentajeM <- num_mujeres/total_estudiantes * 100;
	
	Escribir "El porcentaje de Hombres es: ", porcentajeH;
	Escribir "El porcentaje de Mujeres es: ", porcentajeM;
FinProceso
