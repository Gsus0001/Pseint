//Capitulo 3: Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desaea saber cuanto debera pagar finalemte por su compra
Proceso Ejercicio_22
	Definir precio,descuento,precio_final Como Real;
	Escribir "Digite el precio a pagar: ";
	Leer precio;
	
	descuento <- precio * 0.15;
	precio_final <- precio - descuento;
	
	Escribir "El precio a pagar es de: ", precio_final;
FinProceso
