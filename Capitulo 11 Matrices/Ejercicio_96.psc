//Determinar si una matriz es simétrica o no (Pseudocódigo) .
// 8 1 3      8 1 3
// 1 7 4 ---> 1 7 4
// 3 4 9      3 4 9

Proceso Ejercicio_96
	Definir matriz1,i,j,filas,columnas,matriz2 Como Entero;
	Dimension matriz1[100,100],matriz2[100,100];
	Definir esSimetrica Como Logico;
	
	//Filtramos y obligamos al usaurio a ingresar numeros mayores a 1
	Repetir
		
		Escribir Sin Saltar "Digitar la cantidad de filas (1-100): ";
		Leer filas;
		Escribir Sin Saltar "Digitar la cantidad de columnas (1-100): ";
		Leer columnas;
		Si (filas <= 0 o columnas <= 0 o filas > 100 o columnas > 100) Entonces
			Escribir "ERROR: Las dimensiones deben estar entre 1 y 100.";
			Escribir "";
		FinSi
	Hasta Que (filas >0 y columnas >0 y filas <=100 y columnas <=100)
	
	//En este otro filtro hacemos que el usuario Solo ingrese matrices iguales 2 - 2, 3 - 3 .... 
	Mientras filas <> columnas Hacer
		Escribir "ERROR: Las filas y columnas deben coincidir";
		Escribir "";
		Escribir Sin Saltar "Digitar la cantidad de filas (1-100): ";
		Leer filas;
		Escribir Sin Saltar "Digitar la cantidad de columnas (1-100): ";
		Leer columnas;
		Escribir "";
	FinMientras
	Escribir "";
	
	Escribir "===== Llenado de la matriz =====";
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			
			Escribir Sin Saltar "Digite la Matriz[",i,"][",j,"]: ";
			Leer matriz1[i,j];
			matriz2[j,i] <- matriz1[i,j];
		FinPara
	FinPara
	Escribir "";
	
	// Mostrar ambas matrices una al lado de la otra
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer  // <- filas-1
        Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
            Escribir Sin Saltar matriz1[i,j]," ";
        FinPara
		
        Escribir Sin Saltar " ----> ";
		
        Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
            Escribir Sin Saltar matriz2[i,j]," ";
        FinPara
        Escribir "";
		
    FinPara
	
	//Vemos si la matriz es cuadrada
	Si filas <> columnas Entonces
		esSimetrica <- Falso;
	SiNo
		esSimetrica<- Verdadero;
		
		Para i<-0 Hasta filas-1 Con Paso 1 Hacer
			Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
				
				//Aca buscamos que la matriz sea semejante a su contraparte 
				//Si no mostramos uno de los dos errores
				Si matriz1[i,j] <> matriz1[j,i] Entonces 
					esSimetrica <- Falso;
				FinSi
			FinPara
		FinPara
	FinSi
	
	Si esSimetrica Entonces
		Escribir "";
		Escribir "La matriz SI es Simetrica";
	SiNo
		Escribir "";
		Escribir "La matriz NO es Simetrica";
	FinSi
FinProceso

	