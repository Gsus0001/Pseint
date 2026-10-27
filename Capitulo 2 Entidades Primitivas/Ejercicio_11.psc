//Ejercio 7 Entidades Primitivas -> Funciones Matemáticas. Uso de azar(num) para generar un número del 0 al 49 .
Proceso Ejercio_11
	//Operadores Matematicas
	Definir num,num1,num2,num3,num4,num5,num6,num7,resultado Como Real;//Decidi poner todas las variables juntas para no andar repitiendo programas con la misma finalidad andan todas las varialbes ajja
	
	
	Escribir "Siguiente Funcion Azar";//Esta Linea esta puesta en cada variable para que al momento de lanzar el ejecutador sea mas facil saber que sigue y no tener que andar adivinado
	
	Escribir "Digite un numero: ";//Digitar entre 10 a 100
	Leer num;
	
	resultado <- Azar(num); //Funcion Azar (el resultado que da es alazar y varia entre 1 al numero mas alto escrito)
	
	Escribir "El resultado es: ",resultado;//Resultado alazar xd
	
	Escribir "Siguiente Valor Absoluto";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 8
	Leer num1;
	
	resultado <- abs (num1); //Funcion Absoluto (El resultado daldo es un numero absoluto)
	
	Escribir "El resultado es: ",resultado;//Resultado 8
	
	Escribir "Siguiente Valor Truncado";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//12.34
	Leer num2;
	
	resultado <- trunc (num2); //Funcion Truncado (El resultado emitido es un valor redondo eliminando el decimal)
	
	Escribir "El resultado es: ",resultado;//Resultado 12
	
	Escribir "Siguiente Valor Redondeado";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 12.51
	Leer num3;
	
	resultado <- redon (num3); //Funcion Valor Redondeado (Redondea el resultado al valor mas cercano, del resultado inferior o superiro )
	
	Escribir "El resultado es: ",resultado;//Resultado 13
	
	Escribir "Siguiente Raiz al cuadrado";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 4
	Leer num4;
	
	resultado <- raiz (num4); //Funcion Raiz Cuadrada (Calcula la raiz cuadrada del numero)
	
	Escribir "El resultado es : ",resultado;//Resultado 2
	
	Escribir "Siguiente Seno";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 90.
	Leer num5;
	
	resultado <- sen(num5); //Funcion Seno. El resultado esta calculado en valor radian
	
	Escribir "El resultado es: ",resultado;//Resultado 0.8939966636
	
	
	Escribir "Siguiente Funcion Logaritmica";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 90
	Leer num6;
	
	resultado <- ln(num6); //Funcion Logaritmo Natural
	
	Escribir "El resultado es: ",resultado;//Resultado 4.4998096703
	
	Escribir "Siguiente Funcion Exponencial";
	//---------------------------------------
	
	Escribir "Digite un numero: ";//Digitar 3
	Leer num7;
	
	resultado <- exp(num7); //Funcion Exponencial (El resultado expresado al memento de digitar el numero se toma en cuenta la formula de "e^" por eso da el resultado de 20... periodico )
	
	Escribir "El resultado es: ",resultado;//Resultado 20.0855369232
	//---------------------------------------
	
FinProceso