//Pedir un nombre y desplegarlo rodeado por la misma cantidad de asteriscos que los caracteres que tiene. La cantidad de asteriscos debe ser la misma que los caracteres en el nombre incluido espacios (Pseudocódigo) .
Proceso Ejercicio_102 //Yo a Proceso lo tomo como principal
	Definir nombre Como Cadena;
	
	pedirDatos(nombre);//Argumento
	copiarNombre(nombre);
	
	Escribir "";
FinProceso



SubProceso pedirDatos(nombre Por Referencia)//Pedimos el nombre al usuario
	Escribir Sin Saltar "Digite su nombre: ";
	Leer nombre;
	Escribir "";
FinSubProceso

SubProceso copiarNombre(nombre Por Valor) //Nombre entre asteriscos
	
	Definir tamanio, i Como Entero;
	
	tamanio <- Longitud(nombre);
	//Primera fila de Asteriscos
	Para i<-1 Hasta tamanio Con Paso 1 Hacer
		Escribir Sin Saltar "*";
	FinPara
	
	Escribir "";
	Escribir nombre;
	
	//Segunda fila de Asteriscos
	Para i<-1 Hasta tamanio Con Paso 1 Hacer
		Escribir Sin Saltar "*";
	FinPara
	
	Escribir "";
FinSubProceso
