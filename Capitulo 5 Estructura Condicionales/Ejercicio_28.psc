// En un almacén se hace un 20%  de descuento a clientes cuya compra supere los $100. Determinar la cantidad a pagar (Diagrama N-S) .
Proceso Ejercicio_28
	Definir total, descuento, compra como real;
	Escribir "Ingrese el valor de la compra: $ ";
	Leer compra;
	Si compra > 100 Entonces
		descuento <- compra * 0.20;
		total <- compra - descuento;
		
		Escribir "Oferta especial del 20%"; 
		Escribir "Su compra es de: $ ", compra;
		Escribir "El cliente debe pagar: $ ", total;
		
	SiNo
		total <- compra;
		Escribir "El cliente debe pagar: $ ", compra;
		
	FinSi
FinProceso
