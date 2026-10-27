//Pedir 5 apellidos, almacenarlos en un arreglo y mostrarlos ordenados alfabéticamente (Diagrama de flujo) .
Proceso Ejercicio_106
	
	Definir apellidos Como Cadena;
	Dimensionar apellidos[5];
	//Pedimos los datos
	pedirDatos(apellidos);
	//Ahora los vamos a ordenar 
	ordenar(apellidos);
	//Mostramos los apellidos
	mostrarDatos(apellidos);
	Escribir "";
FinProceso

SubProceso pedirDatos(apellidos Por Referencia)
	
	Definir i Como Entero;
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar (1+i),". Digite un Apellido: ";
		Leer apellidos[i];
	FinPara
	
FinSubProceso

SubProceso ordenar(apellidos Por Referencia)
	
	Definir i,j Como Entero;
	Definir aux Como Cadena;
	
	Para i <-0 Hasta 3 Con Paso 1 Hacer
		Para j <-0 Hasta 3 Con Paso 1 Hacer
			Si apellidos[j] > apellidos[j+1] Entonces
				aux <- apellidos[j];
				apellidos[j] <- apellidos[j+1];
				apellidos[j+1] <- aux;
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso mostrarDatos(apellidos)
	
	Definir i,j Como Entero;
	
	Escribir "";
	Escribir "Los Apelleidos ordenados alfabeticamente son: ";
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir (i+1),". ",apellidos[i];
	FinPara
FinSubProceso
	