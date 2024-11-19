// Funcion que valida quer el material sea 1 o 2
Funcion material <- seleccionarMaterial(a)
    Definir opcionElegida Como Caracter
    Definir material Como Caracter
    Definir esValido Como Logico
    esValido <- Falso
	
    Mientras No esValido Hacer
        Escribir "Seleccione el material: "
		Escribir "1 - Ingrese 1 para ABS "
		Escribir "2 - Ingrese 2 para PLA "
        Leer opcionElegida
        
        // Validar la selección y asignar el material correspondiente
        Segun opcionElegida Hacer
            CASO "1":
                material <- "ABS"
                esValido <- Verdadero
            CASO "2":
                material <- "PLA"
                esValido <- Verdadero
            De Otro Modo:
                Escribir "Opción inexistente. Inténtelo de nuevo."
        FinSegun
		
	FinMientras
FinFuncion