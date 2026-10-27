// Determinar si un alumno aprueba o reprueba un curso (aprobará si su promedio es mayor o igual a 70) (Diagrama de flujo)
Proceso Ejercicio_27
	Definir nota1, nota2, nota3, promedio Como Real;
	Escribir 'Dijite la Nota: ';
	Leer nota1, nota2, nota3;
	promedio <- (nota1+nota2+nota3)/3;
	Si promedio>=7 Entonces
		Escribir 'Felicidades el alumno Aprueba';
	SiNo
		Escribir 'A seguir Estudiando';
	FinSi
FinProceso
