funcion iniciarCompra(relleno Por Valor,perimetro Por valor,tamanio Por Valor,preciosMateriales Por Valor,PAGOREALIZADO Por Referencia)
	//aca en globo la logica de la compra 
	//solicita el presupuesto y consulta si se acepta se llama a la otracion para pagar
	precio<-solicitudPrespuesto(relleno,perimetro,tamanio,preciosMateriales)
	Escribir "El prespuesto por lo solicitado es: ", precio
	///codigo MArtin - voy a metwer un Segun 
	Mientras No esValido Hacer
		Escribir "Si acepta el prespuesto ingrese 1, caso contrario ingrese 2:"
		Leer opcionElegida
		Segun opcionElegida Hacer
			CASO "1":
				rtaPresp <- "SI"
				esValido <- Verdadero
			CASO "2":
				rtaPresp <- "NO"
				esValido <- Verdadero
			De Otro Modo:
				Escribir "Opción inexistente. Inténtelo de nuevo."
		FinSegun
	FinMientras
	/// hasta aca codigo MArtin del segun 
	
	Definir contadorc como entero
	contadorc<-1
	rtaPresp<-MAYUSCULAS(rtaPresp)
	Si rtaPresp <> "SI" Entonces
		Imprimir "desea volver al menu principal, salir "
	SiNo
		// le doy tres intentos para que termine de finalizar la compra con los metodos de pago
		metodosDePago(precio,PAGOREALIZADO)
		si PAGOREALIZADO==0 Entonces
			Mientras contadorc<3 Y PAGOREALIZADO=0 Hacer
				metodosDePago(precio,PAGOREALIZADO)
				contadorc<-contadorc+1
			Fin Mientras
		FinSi		
	FinSi
FinFuncion