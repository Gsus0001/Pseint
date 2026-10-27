// Dada las horas trabajadas de 5 personas y la tarifa de pago, calcular el salario y la sumatoria de todos (Diagrama de flujo, Ciclo Para) .
Proceso Ejercicio_40
	Definir i,horas como enteros;
	Definir tarifa,salarios,suma como reales;
	i <- 1;
	suma <- 0 ;
	Mientras i <= 5 Hacer
		Escribir "Salario del empleado ",i,":";
		Escribir "Digite las horas trabajadas: ";
		Leer horas;
		Escribir "Digite la tarifa por horas";
		Leer tarifa;
		salarios <- horas * tarifa;
		Escribir "El salario es: $", salarios;
		suma <- suma + salarios;
		i <- i + 1;
		Escribir " ";
	FinMientras
	Escribir "La suma de todos los salarios es: $", suma;
FinProceso
