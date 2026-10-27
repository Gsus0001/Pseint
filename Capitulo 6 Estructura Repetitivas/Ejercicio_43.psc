// Calcular la calificación promedio y la calificación más baja de un grupo de 10 alumnos (Pseudocódigo, Ciclo Para)
Proceso Ejerciciio_43
	Definir calificacion, i, suma, cal_baja Como Entero;
	Definir promedio Como Real;
	
	suma <- 0;
	cal_baja <-20;
	
	Para i<-1 Hasta 10 Hacer
		Escribir 'Alumno ', i, '(0-20): 'Sin Saltar;
		Leer calificacion;
		suma <- suma+calificacion;
		Si calificacion<cal_baja Entonces
			cal_baja <- calificacion;
		FinSi
	FinPara
	promedio <- suma/10;
	Escribir 'Calificacion Promedio: ',promedio,'/ 100 ';
	Escribir 'Calificacion Mas Baja: ', cal_baja, ' / 20';
FinProceso
