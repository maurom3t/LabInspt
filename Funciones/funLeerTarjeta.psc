// Datos de Tarjeta 
Funcion leerTarjeta	
	Escribir "titular de la tarjeta"
	leer titular_tarj
	Escribir "numero de la tarjeta"
	leer numero_tarj
	numTarj<- validarNumTarjeta (numero_tarj)
	Escribir "Fecha de vencimiento"
	leer vencimiento
	Escribir "ingresa codigo de seguridad"
	leer codigo_seg
	si codigo_seg>0 y codigo_seg<1000 Entonces
		codigo<-1
	SiNo
		codigo<-0
	FinSi
	Escribir"ingrese numero de documento"
	Leer documento
	si documentos >0 y documento <80000
		truDoc<-1
	SiNo
		truDoc<-0
	FinSi
	si numTarj =0 o codigo=0 o truDoc=0 Entonces
		Escribir "Algunos de los datos ingresados son incorrectos"
		metodosDePago(precio,PAGOREALIZADO)
	SiNo
		Escribir "ingrese si para finalizar compra"
	FinSi
FinFuncion