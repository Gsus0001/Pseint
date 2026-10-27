//Escriba un subprograma nombrado cambio() que tenga un parámetro en número entero y seis parámetros de referencia en número entero nombrados cien,
//cincuenta, veinte, diez, cinco y uno, respectivamente. La función tiene que considerar el valor entero transmitido como una cantidad en dólares y convertir el valor en el número menor de billetes equivalentes (Pseudocódigo) .
Proceso Ejercicio_105
	
	Definir dolares Como Real;
	Definir cien,cincuenta,veinte,diez,cinco,uno Como Entero;
	
	//Pedimos datos
	pedirDatos(dolares);
	//Analizamos los datos
	cambio(dolares,cien,cincuenta,veinte,diez,cinco,uno);
	//Mostramos los datos
	mostrarDatos(dolares,cien,cincuenta,veinte,diez,cinco,uno);
	
FinProceso

SubProceso pedirDatos(Dolares Por Referencia)
	
	Escribir Sin Saltar "Digite la cantidad de dolares: ";
	Leer dolares;
	
FinSubProceso

SubProceso cambio(dolares,cien Por Referencia,cincuenta Por Referencia,veinte Por Referencia,diez Por Referencia,cinco Por Referencia,uno Por Referencia)
	
	cien <- trunc(dolares/100);
	dolares <- dolares mod 100;
	cincuenta <- trunc(dolares/50);
	dolares <- dolares mod 50;
	veinte <- trunc(dolares/20);
	dolares <- dolares mod 20;
	diez <- trunc(dolares/10);
	dolares <- dolares mod 10;
	cinco <- trunc(dolares/5);
	uno <- dolares mod 5;
	
FinSubProceso
SubProceso mostrarDatos(dolares,cien,cincuenta,veinte,diez,cinco,uno)

	Escribir "";
	Escribir "La cantidad de billetes nesesarios es: ";
	Escribir "Cien: ",cien;
	Escribir "Cincuenta: ",cincuenta;
	Escribir "Veinte: ",veinte;
	Escribir "Diez: ",diez;
	Escribir "Cinco: ",cinco;
	Escribir "Uno: ",uno;
	Escribir "";

FinSubProceso

