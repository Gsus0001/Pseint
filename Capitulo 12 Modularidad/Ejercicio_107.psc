//Menú con opciones (Diagrama N-S): 
//Llenar matriz 4×4
//Mostrar matriz
//Sumar todos los elementos
//Salir 

Proceso Ejercicio_107
	
	Definir opcion Como Entero;
	Definir matriz Como Real;
	Dimensionar matriz[4,4];
	
	Repetir
		Escribir "MENU";
		Escribir "";
		Escribir "1. Llenar matriz 4×4";
		Escribir "2. Mostrar matriz";
		Escribir "3. Sumar todos los elementos";
		Escribir "4. Salir";
		Escribir "";
		Escribir Sin Saltar "Digite la opcion del menu:";
		Leer opcion;
		Escribir "";
		
		Segun opcion Hacer
			1:
				llenarMatriz(matriz);
			2:
				mostrarMatriz(matriz);
			3:
				Escribir "La Suma es: ",sumarMatriz(matriz);
			4:
			De Otro Modo:
				Escribir "Se equivoco de opcion de Menu";
		FinSegun
		
		Escribir "";
		
	Hasta Que opcion = 4
	
	
	
	
FinProceso


SubProceso llenarMatriz(matriz Por Referencia)
	
	Definir i,j Como Enteros;
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite un numero[",i,"][",j,"]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz(matriz)
	
	Definir i,j Como Entero;
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i,j]," ";
			
		FinPara
		Escribir "";
	FinPara
	
FinSubProceso

SubProceso suma <- sumarMatriz(matriz)
	
	Definir i,j Como Entero;
	Definir suma Como Real;
	
	suma<-0;
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			suma <- suma + matriz[i,j];
		FinPara
	FinPara
	
	
FinSubProceso
	