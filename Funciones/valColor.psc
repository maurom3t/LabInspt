// Funcion que usa un Segun para asegurarse que elige uno de los colores validos
Funcion color <- seleccionarColor(a)
    Definir opcionElegida Como Caracter
    Definir color Como Caracter
    Definir esValido Como Logico
    esValido <- Falso
	
    Mientras No esValido Hacer
        Escribir "Seleccione el color: "
		Escribir "1 - ROJO "
		Escribir "2 - NEGRO "
        Leer opcionElegida
        
        // Validar la selección y asignar el material correspondiente
        Segun opcionElegida Hacer
            CASO "1":
                color <- "ROJO"
                esValido <- Verdadero
            CASO "2":
                color <- "NEGRO"
                esValido <- Verdadero
            De Otro Modo:
                Escribir "Opción inexistente. Inténtelo de nuevo."
        FinSegun
	FinMientras
FinFuncion	