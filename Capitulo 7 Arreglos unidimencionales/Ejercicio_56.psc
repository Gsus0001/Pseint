// Leer 8 números en un arreglo y mostrarlos en orden: el primero, el último, el segundo, el penúltimo... (Diagrama de flujo) .
Proceso Ejercicio_56
	Definir num,i Como entero;
	Dimension num[8];
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Escribir (i+1),". Digite un Numero: ";
		Leer num[i];
	FinPara
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir num[i];
		Escribir num[7-i];
	FinPara
FinProceso
