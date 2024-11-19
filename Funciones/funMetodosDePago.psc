Funcion metodosDePago(precio Por Valor,PAGOREALIZADO Por Referencia)
	
	Mientras No esValido Hacer
		Escribir "Ingrese el método de pago:"
		Escribir "1 - OPCIÓN 1 - EFECTIVO"
		Escribir "2 - OPCIÓN 2 - TARJETA DE CRÉDITO"
		Escribir "3 - OPCIÓN 3 - TARJETA DE DÉBITO"
        Leer opcionElegida
        
        // Validar la selección y asignar el material correspondiente
        Segun opcionElegida Hacer
            CASO "1":
                Escribir "Ud seleccionó Efectivo"
				billetes(precio,PAGOREALIZADO)
                esValido <- Verdadero
            CASO "2":
                Escribir "Ud seleccionó Tarjeta de Crédito"
				DNI <- validarDNI(a)
				numeroTarjeta <- validarTarjeta(a)
				codigoSeguridad <- validarCodigoSeguridad(a)
				
				// Mostrar los datos ingresados
				Escribir "Datos de la tarjeta ingresados:"
				Escribir "DNI: ", DNI
				Escribir "Número de tarjeta: ", numeroTarjeta
				Escribir "Código de seguridad: ***"
				esValido <- Verdadero
			CASO "3":
                Escribir "Ud seleccionó Tarjeta de Débito"
                esValido <- Verdadero
            De Otro Modo:
                Escribir "Opción inexistente. Inténtelo de nuevo."
        FinSegun
		
	FinMientras
FinFuncion