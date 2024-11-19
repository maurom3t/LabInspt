Funcion presupuestador
	Dimension preciosMateriales[4]
	Dimension materiales[2]
	Dimension carrito[10]
	Dimension stockLocal[2,2,1]  
	Definir dineroEmpresa Como Entero
	
	//ABS
	stockLocal[1,1,1]<-10000//COLOR NEGRO
	stockLocal[1,2,1]<-11000//COLOR ROJO
	//PLA
	stockLocal[2,1,1]<-12000//COLOR NEGRO
	stockLocal[2,2,1]<-13000//COLOR ROJO
	
	materiales[1]<-"ABS"
	materiales[2]<-"PLA"
	
	preciosMateriales[1]<-2000
	preciosMateriales[2]<-4000
	preciosMateriales[3]<-6000
	preciosMateriales[4]<-8000
	
	// HAY QUE CREAR UNA VARIABLE DONDE PONGAMOS POR CADA MATERIAL LA CANTIDAD QUE TENEMOS
	
	
	//presupuesto del lado del cliente
	definir i, presupuesto,intentosPagar, tamanio, relleno, perimetro, colorStock,materialStock, cantidad,disponible, PAGOREALIZADO Como Entero 
	cantidad<-1
	//Pongo el material que el pago realizado es igual a 0 osea que aun no se ha realizado 
	PAGOREALIZADO<-0
	definir material, encontrado Como Caracter
	//eligo el material y si le asigno a una variable
	//con eso conuslto tamaño, perimetro, relleno
	encontrado<-"no contamos con dicho material"
	
	
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	//Escribir "INGRESE EL TAMAÑO DE LA IMPRESION"
	//funcion validar tamanio
	tamanio <- validarTamanio(tamanio)
	Borrar Pantalla
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##   1. TAMAÑO:    ",tamanio,   "                                                                                              ##"
	Escribir "##   2. RELLENO:   ",relleno,  "                                                                                               ##"
	Escribir "##   3. PERIMETRO: ",perimetro,"                                                                                               ##"
	Escribir "##   4. MATERIAL:  ",material, "                                                                                                ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	//Escribir "INGRESE CANTIDAD DE RELLENO"
	//funcion validar relleno
	relleno <- validarRelleno(relleno)
	Borrar Pantalla
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##   1. TAMAÑO:    ",tamanio;escribir "                                                                             ##"
	Escribir "##   2. RELLENO:   ", relleno;Escribir "                                                                           ##"
	Escribir "##   3. PERIMETRO: ", perimetro;Escribir "                                                                         ##"
	Escribir "##   4. MATERIAL:  ", material;Escribir "                                                                          ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	//Escribir "INGRESE PERIMETRO DE LA IMPRESION"
	//funcion validar perimetro
	perimetro <- validarPerimetro(perimetro)
	Borrar Pantalla
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##   1. TAMAÑO:    ",tamanio;escribir "                                                                             ##"
	Escribir "##   2. RELLENO:   ", relleno;Escribir "                                                                           ##"
	Escribir "##   3. PERIMETRO: ", perimetro;Escribir "                                                                         ##"
	Escribir "##   4. MATERIAL:  ", material;Escribir "                                                                          ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	//Escribir "INGRESE MATERIAL EN MAYUSCULAS -- ABS -- PLA "
	//funcion validar material 
	material <- seleccionarMaterial(material)
	Borrar Pantalla
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##   1. TAMAÑO:    ",tamanio;escribir "                                                                             ##"
	Escribir "##   2. RELLENO:   ", relleno;Escribir "                                                                           ##"
	Escribir "##   3. PERIMETRO: ", perimetro;Escribir "                                                                         ##"
	Escribir "##   4. MATERIAL:  ", material;Escribir "                                                                          ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	//Escribir "INGRESE EL COLOR DEL MATERIAL: NEGRO, ROJO"
	//funcion validar/elegir color
	color <- seleccionarColor(color)
	Segun color Hacer
		caso "ROJO":
			colorStock<-1
		caso "NEGRO":
			colorStock<-2
		De Otro Modo:
			Imprimir "Buscate otro color"
	Fin Segun
	
	Borrar Pantalla
	Escribir "#####################################################################################################################"
	Escribir "##                                                                                                                 ##"
	Escribir "##  __         ______   _______         _______   _______   ______  __    __  ________         ______         __   ##"
	Escribir "## |  \       /      \ |       \       |       \ |       \ |      \|  \  |  \|        \       /      \       |  \  ##"
	Escribir "## | $$      |  $$$$$$\| $$$$$$$\      | $$$$$$$\| $$$$$$$\ \$$$$$$| $$\ | $$ \$$$$$$$$      |  $$$$$$\  ____| $$  ##"
	Escribir "## | $$      | $$__| $$| $$__/ $$      | $$__/ $$| $$__| $$  | $$  | $$$\| $$   | $$          \$$__| $$ /      $$  ##"
	Escribir "## | $$      | $$    $$| $$    $$      | $$    $$| $$    $$  | $$  | $$$$\ $$   | $$           |     $$|  $$$$$$$  ##"
	Escribir "## | $$      | $$$$$$$$| $$$$$$$\      | $$$$$$$ | $$$$$$$\  | $$  | $$\$$ $$   | $$          __\$$$$$\| $$  | $$  ##"
	Escribir "## | $$_____ | $$  | $$| $$__/ $$      | $$      | $$  | $$ _| $$_ | $$ \$$$$   | $$         |  \__| $$| $$__| $$  ##"
	Escribir "## | $$     \| $$  | $$| $$    $$      | $$      | $$  | $$|   $$ \| $$  \$$$   | $$          \$$    $$ \$$    $$  ##"
	Escribir "##  \$$$$$$$$ \$$   \$$ \$$$$$$$        \$$       \$$   \$$ \$$$$$$ \$$   \$$    \$$           \$$$$$$   \$$$$$$$  ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##   1. TAMAÑO:    ",tamanio;escribir "                                                                             ##"
	Escribir "##   2. RELLENO:   ", relleno;Escribir "                                                                           ##"
	Escribir "##   3. PERIMETRO: ", perimetro;Escribir "                                                                         ##"
	Escribir "##   4. MATERIAL:  ", material;Escribir "                                                                          ##"
	Escribir "##   5. COLOR:  ", color;Escribir "                                                                          ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
    Escribir "#####################################################################################################################"
	
	//FUNCION MAIN - PRESUPUESTO
	
	existe<-materialExisteEnStock(materiales,material)
	Escribir "el indice del material es ", existe
	si existe = 0 Entonces
		Escribir  "el material no existe"
	sino
		//si existe el material,me aseguro que haya stock 
		//luego valido si queda poco stock me avise
		si hayStockDisponible(relleno,perimetro,tamanio,stockLocal(existe,colorStock,cantidad))	>4000 Entonces 
			iniciarCompra(relleno,perimetro,tamanio,preciosMateriales(existe),PAGOREALIZADO) //Funcion
			Si PAGOREALIZADO =1 Entonces
				Escribir "procedo a restar el stock"
				//resta de stock
				finalizacionCompra(relleno,perimetro,tamanio,stockLocal(existe,colorStock,cantidad))
			SiNo
				Escribir "no pudimos finalizar su compra por favor compruebe contar con el dinero disponible"
			FinSi
			//
		SiNo
			si hayStockDisponible(relleno,perimetro,tamanio,stockLocal(existe,colorStock,cantidad))<4000 y hayStockDisponible(relleno,perimetro,tamanio,stockLocal(existe,colorStock,cantidad))>0 Entonces
				Escribir "queda poco material"	
				iniciarCompra(relleno,perimetro,tamanio,preciosMateriales(existe),PAGOREALIZADO)
			SiNo
				Imprimir "no queda mas material, registrarse como Negocio para comprar mas material"
				//hacer un imprimir lindo de queda poco material
			FinSi
		FinSi
	FinSi
	
	
FinFuncion