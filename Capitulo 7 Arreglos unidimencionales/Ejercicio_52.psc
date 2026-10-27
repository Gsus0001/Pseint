// Crear arreglo de tamaño indicado por teclado, llenar con números aleatorios entre 1-100 y mostrarlos (Diagrama de flujo) .
Proceso Ejercicio_52
	Definir num,n_elementos,i Como Entero;
	Dimensionar num[100];

	Escribir "Digite el numero de elementos para el arreglo dimencional: ";
	Leer n_elementos;
	
	Para i <- 0 Hasta n_elementos con paso 1 hacer
		num[i] <- azar(100);
	FinPara
	
	Para i <- 0 Hasta n_elementos Con Paso 1 Hacer
		Escribir Sin Saltar num[i], " ";
	FinPara
	
	Escribir " ";
FinProceso
