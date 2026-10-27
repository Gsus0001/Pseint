// Una frutería ofrece las manzanas con descuento según la siguiente tabla:
// 0 - 2 -> 0 MOD corresponde a la variable
// 2.01 - 5 -> 10 MOD corresponde a la variable
// 5.01 - 10 -> 15 MOD Corresponde a la variable
// 10.01 - en adelante -> 20 MOD corresponde a la variable
Proceso Ejercicio_30
	Definir kilos Como Real;
	Escribir 'Ingrese los kilos que desea llevar: ';
	Leer kilos;
	// Determinar descuento según tabla
	Si kilos<=2 Entonces
		Escribir "El descuento es de 0%";
	SiNo
		Si kilos<=5 Entonces
			Escribir "El descuento es de 10%";
		SiNo
			Si kilos<=10 Entonces
				Escribir "El descuento es de 15%";
			SiNo
				Si kilos >=10.01 Entonces
					Escribir "El descuento es de 20%";
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
