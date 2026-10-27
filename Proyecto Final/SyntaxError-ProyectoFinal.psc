Proceso MenuPrincipal
    Definir opcion Como Entero;
	
    Repetir
        Limpiar Pantalla;
        Escribir "===============================";
        Escribir "        MENU DE JUEGOS";
        Escribir "===============================";
        Escribir "1. Piedra, Papel o Tijera";
        Escribir "2. Ahorcado";
        Escribir "3. Ta Te Ti";
        Escribir "0. Salir";
        Escribir "-------------------------------";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                PiedraPapelTijera();
            2:
                Ahorcado();
            3:
                TaTeTi();
            0:
                Escribir "Saliendo del programa...";
            De Otro Modo:
                Escribir "Opción inválida";
        FinSegun
		
    Hasta Que opcion = 0
FinProceso

SubProceso piedrapapeltijera
	Definir opcion Como Entero;
	Definir jugada_usuario, jugada_pc Como Entero;
	Definir puntos_usuario, puntos_pc Como Entero;
	Definir nombre_usuario, nombre_pc, resultado Como Cadena;
	Borrar Pantalla;
	// Empezamos el ciclo Repetir
	Repetir
		Escribir 'Juego Elegido: PIEDRA, PAPEL O TIJERA';
		Escribir 'Elegí la modalidad';
		Escribir '1. Mejor de 1';
		Escribir '2. Mejor de 3';
		Escribir '3. Salir';
		Escribir 'Digite la opción: 'Sin Saltar;
		Leer opcion;
		Escribir '';
		Segun opcion Hacer
			1:
				opcionUno(opcion);
				// Ingresamos el primer SubProceso
			2:
				opcionDos(opcion);
			3:
			De Otro Modo:
				Escribir "Opción incorrecta. Seleccione 1,2 o 3";
				// Para asegurarnos que no coloque otros numeros
				Escribir "";
		FinSegun
	Hasta Que opcion=3
FinSubProceso

SubAlgoritmo opcionUno(opcion)
	Definir  jugada_usuario, jugada_pc Como Entero;
	Definir eleccion_jg, eleccion_pc, resultado Como Cadena;
	Borrar Pantalla;
	Escribir 'Elegi tu jugada:';
	Escribir '1. Piedra';
	Escribir '2. Papel';
	Escribir '3. Tijera';
	// Guardamos la eleccion del usuario 
	Leer jugada_usuario;
	
	// Empezamos el ciclo Mientras para que no ingrese un numero diferentes a los pedidos
	Mientras jugada_usuario<1 o jugada_usuario>3 Hacer
		Escribir 'Jugada Invalida. Ingresa 1,2 o 3';
		Leer jugada_usuario;
	FinMientras
	// Aplicamos la funcion azar para que nos de un numero entre 1 y 3, gracias al +1 nunca va a ser 0, pasa de 1,2 y 3
	jugada_pc <- azar(3)+1;
	Segun jugada_usuario Hacer
		1:
			eleccion_jg <- 'Piedra';
		2:
			eleccion_jg <- 'Papel';
		De Otro Modo:
			eleccion_jg <- 'Tijera';
	FinSegun
	// Asignamos el caracter a las variables
	Segun jugada_pc Hacer
		1:
			eleccion_pc <- 'Piedra';
		2:
			eleccion_pc <- 'Papel';
		De Otro Modo:
			eleccion_pc <- 'Tijera';
	FinSegun
	Escribir '';
	Escribir 'Vos: ', eleccion_jg;
	Escribir 'Pc: ', eleccion_pc;
	// Condicionamos los diferentes resultados
	Si jugada_usuario==jugada_pc Entonces
		resultado <- 'EMPATE';
	SiNo
		Si (jugada_usuario=1 Y jugada_pc=3) O (jugada_usuario=2 Y jugada_pc=1) O (jugada_usuario>= 3 Y jugada_pc=2) Entonces
			resultado <- 'GANASTE';
		SiNo
			resultado <- 'PERDISTE';
		FinSi
	FinSi
	// Por ultimo imprimimos en pantalla el resultado
	Escribir 'Resultado: ', resultado;
FinSubAlgoritmo

SubProceso opcionDos(opcion)
	// Definimos las variables que vamos a usar
	Definir rondas,ronda_actual,jugada_usuario,jugada_pc,puntos_jg,puntos_pc como enteros;
	Definir eleccion_jg,eleccion_pc,resultado como caracteres;
	Borrar Pantalla;
	rondas <- opcion + 1;
	puntos_jg <- 0;
	puntos_pc <- 0;
	ronda_actual <- 1;
	// Primer ciclo 
	Mientras ronda_actual <= rondas Hacer
		Escribir "Ronda ",ronda_actual," de ",rondas;
		Escribir "Elegi tu jugada:";
		Escribir "1 ------ Piedra";
		Escribir "2 ------ Papel";
		Escribir "3 ------ Tijera";
		Leer jugada_usuario;
		// Segundo ciclo para no permitir que se ingrese un numero no valido
		Mientras jugada_usuario < 1 o jugada_usuario > 3 Hacer
			Escribir "Opcion Ingresada no valida. Insertar 1, 2 o 3";
			Leer jugada_usuario;
		FinMientras
		// Usamos la funcion azar para que nos de un número al azar del 1 al 3
		jugada_pc <- azar(3)+1;
		// Asignamos la opcion elegida
		Segun jugada_usuario Hacer
			1:
				eleccion_jg <- "Piedra";
			2:
				eleccion_jg <- "Papel";
			De Otro Modo:
				eleccion_jg <- "Tijera";
		FinSegun
		Segun jugada_pc Hacer
			1:
				eleccion_pc <- "Piedra";
			2:
				eleccion_pc <- "Papel";
			De Otro Modo:
				eleccion_pc <- "Tijera";
		FinSegun
		Escribir "";
		// Mostramos las elecciones
		Escribir "Vos: ",eleccion_jg;
		Escribir "Pc: ",eleccion_pc;
		// Asignamos los resultados
		Si eleccion_jg == eleccion_pc Entonces
			resultado <- "EMPATE";
		SiNo
			Si (jugada_usuario = 1 Y jugada_pc = 3) O (jugada_usuario = 2 Y jugada_pc = 1) O (jugada_usuario >= 3 Y jugada_pc = 2) Entonces
				resultado <- "GANASTE";
				puntos_jg <- puntos_jg + 1;
			SiNo
				resultado <- "PERDISTE";
				puntos_pc <- puntos_pc + 1;
			FinSi
		FinSi
		// Mostramos el resultado
		Escribir "Resultado: ",resultado," esta ronda";
		Si rondas = 3 Entonces
			Escribir "Puntaje vos: ",puntos_jg," PC: ",puntos_pc;
		FinSi
		Si puntos_jg = 2 O puntos_pc = 2 Entonces
			ronda_actual <- rondas + 1;
		SiNo
			ronda_actual <- ronda_actual + 1;
		FinSi
		Escribir "";
	FinMientras
	Si puntos_jg > puntos_pc Entonces
		Escribir "Ganador Final: !VOS";
	SiNo
		Si puntos_jg < puntos_pc Entonces
			Escribir "Ganador Final: !PC";
		SiNo
			Escribir "RESULTADO FINAL: EMPATE";
		FinSi
	FinSi
	// Mostramos el resultado final
	Escribir "Puntaje Final: Vos ",puntos_jg," Pc ",puntos_pc;
FinSubProceso
// =====================================================================
// Juego del Ahorcado - Primera Parte /Nucleo del juego/ - Segunda parte /Fix de bug y mejora visual/ - Tercera Parte /Fix de bug, convercion de programa a funcion para adicionar al programa principal y prueba final/
// =====================================================================
// CAMBIOS RESPECTO A LA VERSION ANTERIOR:
//   - Se convirtio el Proceso principal en dos SubProcesos para
//     facilitar la integracion al programa grupal (portabilidad):
//       * AhorcadoMenu  -> maneja el menu con validacion
//       * JugarAhorcado -> logica completa de una partida
//   - Se agrego Repetir...Hasta Que en el menu para que no falle
//     si el usuario ingresa un valor distinto de 1 o 2
//   - Se agrego pantalla de bienvenida y mensaje final mejorado
//   - Se corrigio typo: MotrarAhorcado -> MostrarAhorcado
//   - Documentacion actualizada en cada bloque

subProceso Ahorcado
	// Punto de entrada standalone.
	// Para integrarlo al programa grupal, reemplazar este bloque
	// por una llamada a AhorcadoMenu() desde el Proceso principal.
	AhorcadoMenu;
FinsubProceso

//===================================================================================(SubProceso principal del menu - PORTABILIDAD)

// AhorcadoMenu: Muestra el menu con validacion mediante Repetir...Hasta Que.
// El bucle se repite hasta que el usuario ingrese 1 (Jugar) o 2 (Salir).
// Si ingresa cualquier otro valor, muestra un error y vuelve a pedir la opcion.
SubProceso AhorcadoMenu
	Definir Opcion Como Entero;
	
	Repetir
		Borrar Pantalla;
		Escribir "============================";
		Escribir "    JUEGO DEL AHORCADO     ";
		Escribir "============================";
		Escribir "";
		Escribir "  1. Jugar";
		Escribir "  2. Salir";
		Escribir "";
		Escribir Sin Saltar "  Ingrese una opción: ";
		Leer Opcion;
		
		Segun Opcion Hacer
			1:
				// Iniciamos una partida completa
				JugarAhorcado;
			2:
				// Salida limpia del juego
				Borrar Pantalla;
				Escribir "¡Gracias por elegirnos espero que hayas disfrutado del juego!";
				Esperar 1 Segundos;
			De Otro Modo:
				// Cualquier valor distinto de 1 o 2 muestra error y repite
				Escribir "Opcion incorrecta, vuelva a intentar";
				Esperar 1 Segundos;
		FinSegun
	Hasta Que Opcion = 1 O Opcion = 2;
	
FinSubProceso

//===================================================================================(SubProceso del juego - PORTABILIDAD)

// JugarAhorcado: Contiene la logica completa de una partida.
// Se extrae del Proceso principal para facilitar la reutilizacion
// y la integracion desde el programa grupal.
SubProceso JugarAhorcado
	//Definimos Variables
	Definir esp_letras,letra Como Caracter;
	Definir aciertos,juego_terminado Como Logico;
	Definir num_fallos Como Entero;
	Dimensionar aciertos[20];
	Definir pal_secreto,letras_erradas Como Cadena;
	
	//Iniciamos las variables principales y Flujo del juego
	esp_letras <- "";
	num_fallos <- 8;
	pal_secreto <- PalabraAleatoria(aciertos);
	letras_erradas <- "";
	juego_terminado <- Falso;
	
	Repetir
		Borrar Pantalla;//Borramos la pantalla para mejor visualizacion
		Escribir "=== JUEGO DEL AHORCADO ===" ;
		Escribir "";
		Escribir "Intentos restantes: ",num_fallos,"/8";
		Escribir "Letras incorrectas: ",letras_erradas;
		EscribirSecreto(pal_secreto,aciertos);//Mostramos _ (guiones) bajo las letras no adivinadas
		
		MostrarAhorcado(num_fallos);
		
		LeerLetra(letra, esp_letras);		
		Si no ComprobarSecreto(letra,pal_secreto,aciertos) Entonces//Comprobamos si la palabra esta o si no vuelve en Falso mostrando un error
			num_fallos <- num_fallos - 1;
			Si no LetraRepetida(letras_erradas,letra) entonces				
				letras_erradas <- Concatenar(letras_erradas,letra);
				letras_erradas <- Concatenar(letras_erradas, " ");
			FinSi
		finsi
		
	Hasta Que NumerosAciertos(aciertos) = Longitud(pal_secreto) o num_fallos = 0;//Condicionamos a que se gane con los aciertos o se llegue a los 8 fallos	
	
	Borrar Pantalla;//Borramos la pantalla para mejor visualizacion
	EscribirSecreto(pal_secreto,aciertos);	
	
	Si num_fallos = 0 Entonces//Verificamos si se llega a 8 errores el juego termina
		Borrar Pantalla;
		juego_terminado <- Verdadero;
		MostrarAhorcado(num_fallos);
		Escribir "Perdiste. La palabra era: ",pal_secreto;
	SiNo
		Escribir "Ganaste! La palabra era: ",pal_secreto;
	FinSi
	
	Escribir "";
	// Volver al menu tanto si se gana como si se pierde
	Escribir "Presione una tecla para volver al menu...";
	Esperar Tecla;
	AhorcadoMenu;
	
	
FinSubProceso

//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)
Funcion palabra <- PalabraAleatoria(aciertos Por Referencia)//Usaremos esta funcion para elegir de forma Aleatorio entre 20 palabras precargadas.
	
	Definir palabras,palabra Como Cadena;
	Definir indice,i Como Entero;
	
	Dimension palabras[71];
	
	palabras[0] <- "casa";
	palabras[1] <- "perro";
	palabras[2] <- "auto";
	palabras[3] <- "mendoza";
	palabras[4] <- "gimnasio";
	palabras[5] <- "pelota";
	palabras[6] <- "computadora";
	palabras[7] <- "programa";
	palabras[8] <- "teclado";
	palabras[9] <- "monitor";
	palabras[10] <- "ventana";
	palabras[11] <- "mouse";
	palabras[12] <- "internet";
	palabras[13] <- "codigo";
	palabras[14] <- "variable";
	palabras[15] <- "funcion";
	palabras[16] <- "bucle";
	palabras[17] <- "condicion";
	palabras[18] <- "algoritmo";
	palabras[19] <- "sistema";
	// 50 palabras agregadas (indices 20-69)
	palabras[20] <- "lampara";
	palabras[21] <- "telefono";
	palabras[22] <- "silla";
	palabras[23] <- "ciudad";
	palabras[24] <- "escuela";
	palabras[25] <- "hospital";
	palabras[26] <- "trabajo";
	palabras[27] <- "musica";
	palabras[28] <- "guitarra";
	palabras[29] <- "pelicula";
	palabras[30] <- "libro";
	palabras[31] <- "puerta";
	palabras[32] <- "cocina";
	palabras[33] <- "jardin";
	palabras[34] <- "caballo";
	palabras[35] <- "pajaro";
	palabras[36] <- "mariposa";
	palabras[37] <- "montaña";
	palabras[38] <- "playa";
	palabras[39] <- "rio";
	palabras[40] <- "estrella";
	palabras[41] <- "planeta";
	palabras[42] <- "cohete";
	palabras[43] <- "ciencia";
	palabras[44] <- "quimica";
	palabras[45] <- "biologia";
	palabras[46] <- "historia";
	palabras[47] <- "geografia";
	palabras[48] <- "idioma";
	palabras[49] <- "deporte";
	palabras[50] <- "futbol";
	palabras[51] <- "basquet";
	palabras[52] <- "tenis";
	palabras[53] <- "natacion";
	palabras[54] <- "bicicleta";
	palabras[55] <- "camino";
	palabras[56] <- "semaforo";
	palabras[57] <- "puente";
	palabras[58] <- "edificio";
	palabras[59] <- "escalera";
	palabras[60] <- "espejo";
	palabras[61] <- "reloj";
	palabras[62] <- "lapicera";
	palabras[63] <- "cuaderno";
	palabras[64] <- "mochila";
	palabras[65] <- "borrador";
	palabras[66] <- "pizarron";
	palabras[67] <- "carpeta";
	palabras[68] <- "tijera";
	palabras[69] <- "regla";
	palabras[70] <- "arbol";
	
	indice <- Azar(71);
	palabra <- palabras[indice];
	palabra <- Mayusculas(palabras[indice]);
	Escribir "";
	Escribir "===== Inicia el Juego ======";
	Escribir "3"; Esperar 1 Segundos;
	Escribir "2"; Esperar 1 Segundos;
	Escribir "1"; Esperar 1 Segundos;
	Para i <- 0 Hasta 19 Hacer
		aciertos[i] <- Falso;
		
	FinPara
FinFuncion
//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)
Funcion num <- NumerosAciertos(aciertos)//Usaremos esta funcion para recorrer las 20 posiciones y verificar si se adivino una o todas las palabras
	
	Definir num,i Como Entero;
	
	num<-0;
	
	Para i<-0 Hasta 19 Hacer
		Si aciertos[i] Entonces
			num<-num+1;
		FinSi
	FinPara
	
FinFuncion

//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)

Funcion EscribirSecreto(pal_secreto,aciertos)//Con esta funcion mostrariamos la palabra en la pantalla
	Definir i Como Entero;
	Para i<-0 Hasta Longitud(pal_secreto)-1 Hacer		
		Si aciertos[i] Entonces
			Escribir Sin Saltar Subcadena(pal_secreto,i,i)," ";
		SiNo
			Escribir Sin Saltar "_ ";
		FinSi
	FinPara
	Escribir "";
	
FinFuncion

//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)

Funcion acierto <- ComprobarSecreto(letra,pal_secreto,aciertos Por Referencia)//Con esta funcion recorreremos la palabra sacando una Subcadena viendo si la letra ingresada coincide con la palabra secreta, entregando informacion por Verdadero o Falso
	Definir i Como Entero;
	Definir acierto Como Logico;
	acierto <- Falso;
	
	Para i<-0 Hasta Longitud(pal_secreto)-1 Hacer
		Si Subcadena(pal_secreto,i,i)=letra Entonces
			aciertos[i] <- Verdadero;
			acierto <- Verdadero;
		FinSi
	FinPara
FinFuncion

//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)

Funcion LeerLetra(letra Por Referencia, esp_letras Por Referencia)//Esta funcion entra en bucle hasta que el usuario ingrese un solo caracter, lo convierte a mayuscula para mantener consistencia 
	Definir letra_repetida Como Logico;
	Definir i Como Entero;
	Repetir
		letra_repetida <- falso; 
		Escribir Sin Saltar "Letra: ";
		Leer letra;
		letra <- Mayusculas(letra);
		
		//Verificamos si la letra ingresada ya fue usada.
		//Verificamos que ingrese un  solo caracter(letra).
		Para i<-0 Hasta Longitud(esp_letras)-1 Hacer
			Si Subcadena(esp_letras,i,i)=letra Entonces
				letra_repetida <- Verdadero;
			FinSi
		FinPara
		
		si Longitud(letra) <> 1 Entonces
			Escribir "Error: Debes ingresar una sola letra";
		SiNo
			si letra_repetida entonces
				Escribir "Error: Ya uso esta letra";
			FinSi
		Finsi
	Hasta Que Longitud(letra) = 1 y No letra_repetida;
	esp_letras <- Concatenar(esp_letras,Concatenar(letra," "));
FinFuncion

//===================================================================================(Separamos de forma visual el proceso principal de las funciones y subprogramas)
Funcion existe <- LetraRepetida(texto, letra) //Usamos esta funcion para verificar si la letra esta siendo repetida
	Definir i Como Entero;
	Definir existe Como Logico;
	existe <- Falso;
	
	Para i <- 0 Hasta Longitud(texto)-1 Hacer
		Si Subcadena(texto,i,i) = letra Entonces
			existe <- Verdadero;
		FinSi
	FinPara
FinFuncion

//===========================================================================================

// MostrarAhorcado: Dibuja el estado del ahorcado segun los intentos restantes.
// (Corregido typo: antes era MotrarAhorcado)
Funcion MostrarAhorcado(num_fallos)
	Escribir "";
	Segun num_fallos Hacer
		8:
			Escribir "  +---+";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		7: 
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		6:
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir "      |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		5:
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir "  |   |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		4: 
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir " /|   |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		3:
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir " /|\  |";
			Escribir "      |";
			Escribir "      |";
			Escribir "=========";
		2: 
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir " /|\  |";
			Escribir " /    |";
			Escribir "      |";
			Escribir "=========";
		1:
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir " /|\  |";
			Escribir " / \  |";
			Escribir "      |";
			Escribir "=========";
		0:
			Escribir "  +---+";
			Escribir "  |   |";
			Escribir "  O   |";
			Escribir " /|\  |";
			Escribir " / \  |";
			Escribir "  |   |";
			Escribir "=========";
	FinSegun
	Escribir "";
FinFuncion
SubProceso Tateti
	Limpiar Pantalla;
	Escribir "=== TA TE TI ===";
	Definir fila, col, jugador, jugadas, modo, opcion, puntos1,salir, puntos2 Como Entero;//JUEGO
	Definir ganador, nombre1, nombre2,tablero Como Caracter;
	Dimension tablero(3,3);
	
	puntos1 <- 0;
	puntos2 <- 0;
	
	Repetir
		// hacemos el menu
		Repetir
			Limpiar Pantalla;
			Escribir "=== TA TE TI ===";
			Escribir "Seleccione modo: ";
			Escribir "1. Jugador vs Jugador";
			Escribir "2. Jugador vs CPU";
			Escribir "3. Salir";
			Leer modo;
			
			Si NO (modo = 1 O modo = 2 O modo = 3) Entonces
				Escribir "Opción inexistente";
				
			FinSi
			
		Hasta Que modo = 1 O modo = 2 o modo = 3
		
		Si modo = 3 Entonces
			salir <- 1;
		SiNo
			// se pueden elegir los nombres
			Escribir "Ingrese nombre del jugador X: ";
			Leer nombre1;
			
			Si modo = 1 Entonces
				Escribir "Ingrese nombre del jugador O: ";
				Leer nombre2;
			SiNo
				nombre2 <- "CPU";
			FinSi
			
			puntos1 <- 0;
			puntos2 <- 0;
			
			Repetir
				
				jugador <- 1;
				jugadas <- 0;
				ganador <- "";
				
				InicializarTablero(tablero);
				
				Mientras ganador = "" Y jugadas < 9 Hacer
					
					Limpiar Pantalla;
					MostrarTablero(tablero);
					Escribir "";
					
					// se van guardando las partidas ganadas de cada jugador
					Escribir "Marcador:";
					Escribir nombre1, ": ", puntos1;
					Escribir nombre2, ": ", puntos2;
					Escribir "";
					
					// turnos de los jugadores
					Si jugador = 1 Entonces
						Escribir "Turno de ", nombre1, " (X)";
					SiNo
						Si modo = 2 Entonces
							Escribir "Turno de ", nombre2, " (O)";
							Escribir "Pensando la mejor jugada...";
							Esperar 1.5 Segundos;
						SiNo
							Escribir "Turno de ", nombre2, " (O)";
						FinSi
					FinSi
					
					// la cpu analiza que puede hacer
					Si jugador = 2 Y modo = 2 Entonces
						CPU(tablero, fila, col);
					SiNo
						Repetir
							Escribir "Ingrese FILA (1-3): ";
							Leer fila;
							Escribir "Ingrese COLUMNA (1-3): ";
							Leer col;
							
							fila <- fila - 1;
							col <- col - 1;
						Hasta Que MovimientoValido(tablero, fila, col)
					FinSi
					
					// la animacion que hace el tablero
					Limpiar Pantalla;
					MostrarTablero(tablero);
					Escribir "Colocando ficha...";
					Esperar 0.5 Segundos;
					
					// se coloca la ficha
					Si jugador = 1 Entonces
						tablero[fila,col] <- "X";
						jugador <- 2;
					SiNo
						tablero[fila,col] <- "O";
						jugador <- 1;
					FinSi
					
					jugadas <- jugadas + 1;
					ganador <- VerificarGanador(tablero);
					
				FinMientras
				
				Limpiar Pantalla;
				MostrarTablero(tablero);
				Escribir "";
				
				// se define el ganador/empate
				Si ganador = "X" Entonces
					Escribir "¡Ganó ", nombre1, "!";
					puntos1 <- puntos1 + 1;
				SiNo
					Si ganador = "O" Entonces
						Escribir " ¡Ganó ", nombre2, "!";
						puntos2 <- puntos2 + 1;
					SiNo
						Escribir "Empate";
					FinSi
				FinSi
				
				// se muestran las opciones una vez finalizada la partida
				Repetir
					Escribir "";
					Escribir "1. Revancha";
					Escribir "2. Regresar al menú";
					Leer opcion;
					
					Si NO (opcion = 1 O opcion = 2) Entonces
						Escribir "Opción inexistente";
					FinSi
					
				Hasta Que opcion = 1 O opcion = 2
				
			Hasta Que opcion = 2
		FinSi
	Hasta Que salir = 1
	
FinSubProceso


// funciones del juego

SubProceso InicializarTablero(tablero Por Referencia)
	Definir i,j Como Entero;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			tablero(i,j) <- " ";
		FinPara
	FinPara
FinSubProceso


SubProceso MostrarTablero(tablero)
	Definir i,j Como Entero;
	
	Escribir "        COLUMNAS";
	Escribir "        1     2     3";
	Escribir "     -------------------";
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		
		Si i = 1 Entonces
			Escribir Sin Saltar "FILA ", i+1, " |";
		SiNo
			Escribir Sin Saltar "     ", i+1, " |";
		FinSi
		
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar "  ", tablero(i,j), "  |";
		FinPara
		
		Escribir "";
		Escribir "     -------------------";
		
	FinPara
	
FinSubProceso


Funcion valido <- MovimientoValido(tablero, fila, col)
	Definir valido Como Logico;
	
	Si fila >= 0 Y fila < 3 Y col >= 0 Y col < 3 Entonces
		Si tablero(fila,col) = " " Entonces
			valido <- Verdadero;
		SiNo
			Escribir "Casilla ocupada";
			valido <- Falso;
		FinSi
	SiNo
		Escribir "Posición inválida";
		valido <- Falso;
	FinSi
	
FinFuncion


Funcion ganador <- VerificarGanador(tablero)
	Definir ganador Como Caracter;
	Definir i Como Entero;
	
	ganador <- "";
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si tablero(i,0) <> " " Y tablero(i,0) = tablero(i,1) Y tablero(i,1) = tablero[i,2] Entonces
			ganador <- tablero(i,0);
		FinSi
	FinPara
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si tablero[0,i] <> " " Y tablero[0,i] = tablero[1,i] Y tablero[1,i] = tablero[2,i] Entonces
			ganador <- tablero[0,i];
		FinSi
	FinPara
	
	Si tablero[0,0] <> " " Y tablero[0,0] = tablero[1,1] Y tablero[1,1] = tablero[2,2] Entonces
		ganador <- tablero[0,0];
	FinSi
	
	Si tablero[0,2] <> " " Y tablero[0,2] = tablero[1,1] Y tablero[1,1] = tablero[2,0] Entonces
		ganador <- tablero[0,2];
	FinSi
	
FinFuncion


// comportamieto de la cpu

SubProceso CPU(tablero Por Referencia, fila Por Referencia, col Por Referencia)
	
	Si BuscarMovimiento(tablero, "O", fila, col) Entonces
	FinSi
	
	Si fila = -1 Entonces
		Si BuscarMovimiento(tablero, "X", fila, col) Entonces
		FinSi
	FinSi
	
	Si fila = -1 Entonces
		Repetir
			fila <- Aleatorio(0,2);
			col <- Aleatorio(0,2);
		Hasta Que tablero[fila,col] = " "
	FinSi
	
FinSubProceso


Funcion encontrado <- BuscarMovimiento(tablero, ficha, fila Por Referencia, col Por Referencia)
	Definir encontrado Como Logico;
	Definir i,j Como Entero;
	
	encontrado <- Falso;
	fila <- -1;
	col <- -1;
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Para j <- 0 Hasta 2 Con Paso 1 Hacer
			
			Si tablero[i,j] = " " Entonces
				
				tablero[i,j] <- ficha;
				
				Si VerificarGanador(tablero) = ficha Entonces
					fila <- i;
					col <- j;
					encontrado <- Verdadero;
				FinSi
				
				tablero[i,j] <- " ";
				
			FinSi
			
		FinPara
	FinPara
	
	
FinFuncion