Algoritmo Proyecto
	Definir menu, cli, prov, store, opClient, x, tamano Como Entero
	Definir salida, descrip Como Caracter
	
	//STOCK
	Dimension preciosMateriales[4]
	Dimension materiales[2]
	Dimension carrito[10]
	Dimension stockLocal[2,2,1]  
	
	
	//CAPITAL - Lab3D
	dineroEmpresa<-100000000
	//
	
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
	
	//FinStock
	
	
	// STOCK PROVEEDOR
	Dimension cargarCliente[1, 2]
	Dimension stockProveedor[6,4]
	//-------------STOCK  MATERIAL ---------------------///
	stockProveedor[1,1]<-"ABS"//MATERIAL
	stockProveedor[1,2]<-"NEGRO"//COLOR
	stockProveedor[1,3]<-"800" //PRECIO
	stockProveedor[1,4]<-"900000"//CANTIDAD
	stockProveedor[2,1]<-"ABS"//MATERIAL
	stockProveedor[2,2]<-"ROJO"//COLOR
	stockProveedor[2,3]<-"800" //PRECIO
	stockProveedor[2,4]<-"900000"//CANTIDAD
	//-------------STOCK OTRO MATERIAL ---------------------///
	stockProveedor[3,1]<-"PLA"//MATERIAL
	stockProveedor[3,2]<-"NEGRO"//COLOR
	stockProveedor[3,3]<-"800" //PRECIO
	stockProveedor[3,4]<-"900000"//CANTIDAD
	stockProveedor[4,1]<-"PLA"//MATERIAL
	stockProveedor[4,2]<-"ROJO"//COLOR
	stockProveedor[4,3]<-"800" //PRECIO
	stockProveedor[4,4]<-"900000"//CANTIDAD
	
	// FIN STOCK PROVEEDOR
	
	Escribir "SIstema de Gestion 3D LABs";
	
	Mientras salida<>'n' & salida<>'N' Hacer
		Borrar Pantalla
		MenuPrincipal()
		Leer menu
		Segun menu hacer
			caso 1: // MENU CLIENTES
				Mientras opClient<>3 Hacer
				FunCargando();
				Borrar Pantalla	
				MenuCliente()
				Leer opClient
				Segun opClient Hacer
					Caso 1: //MENU PRESUPUESTO
						Mientras opPre<>3 Hacer
						FunCargando();
						Borrar Pantalla
						MenuCliPresupuesto()
						leer opPre
						segun opPre Hacer
							Caso 1: //MENU DESCRIPCION
								FunCargando();
								Borrar Pantalla
								Escribir "Ingrese la descripcion del Objeto"
								Leer descrip
								Escribir "Uds ingreso la siguiente descripcion: ", descrip
								
							Caso 2: // MENU PRESUPUESTO
								FunCargando();
								Borrar Pantalla
								presupuestador(stockLocal, materiales, preciosMateriales)
								//Escribir "Llamar a la funcion CargaProp"
								
							Caso 3: // OPCION VOLVER Menu Anterior
								FunCargando();
								Borrar Pantalla
								
							De Otro Modo:
								Escribir "Opcion Incorrecta"
						FinSegun
						//Presupuesto
						FinMientras
					Caso 2:
						Escribir "El estado de la impresion es: ", estImp
						opClient<-3
					Caso 3:// Menu Anterior
						Escribir "Menu Anterior - CLientes"
						opClient<-3
					De Otro Modo:
						Escribir "Opcion Incorrecta"
				FinSegun
			//Menu Pcipal	
				FinMientras
			Caso 2: // MENU PROVEEDOR
				
				x<-0
				Mientras 5>intentos y x=0 Hacer
					x<-validarUsuarioContrasena()		
					intentos<-intetos + 1 
				FinMientras
				
				si x = 0 Entonces
					Escribir ("Lo retornamos a la funcion principal")
				SiNo
					Escribir "Bienvenido al tronco de Marin"
					Repetir
						cartel()
						Escribir (" Ingrese una opcion: ")
						Escribir (" 1. Mostrar Stock Disponible  ")
						Escribir (" 2. Mostrar Pedidos")
						Escribir (" 3. SALIR ")
						Leer op
						Escribir op
						Segun op Hacer
							Caso 1:
								cartel()
								mostrarStockProv(stockProveedor)
							Caso 2:
								cartel()
								Escribir "Aca va los pedidos del Negocio - MostrarPedidos()"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
							Caso 3:
								cartel()
								Escribir "Hasta luego"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
							De Otro Modo:
								escribir "Opcion INCORRECTA"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
						Fin Segun
					Hasta Que op=3
				FinSi
				// FIN PROVEEDOR
			Caso 3: // MENU NEGOCIO
				x<-0
				Mientras 5>intentos y x=0 Hacer
					x<-validarUsuarioContrasena()		
					intentos<-intetos + 1 
				FinMientras
		
				si x = 0 Entonces
					Escribir ("Lo retornamos a la funcion principal")
				SiNo
					Escribir "Bienvenido al tronco de Marin"
					Repetir
						cartel()
						Escribir (" Ingrese una opcion: ")
						Escribir (" 1. Mostrar Stock Disponible  ")
						Escribir (" 2. Solicitar Stock al Proveedor ")
						Escribir (" 3. Mostrar Stock Disponible ")
						Escribir (" 4. SALIR ")
						Leer op
						Escribir op
						Segun op Hacer
							Caso 1:
								mostrarStock(materiales, stockLocal)
							Caso 2:
								cartel()
								solicitarStockProveedor(stockProveedor)
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
							Caso 3:
								cartel()
								Escribir "Stock Disponible"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
								//alertasDeStocks()
							Caso 4:
								cartel()
								Escribir "Hasta luego"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
								//alertasDeStocks()
							De Otro Modo:
								escribir "Opcion INCORRECTA"
								Escribir "Presione cualquier tecla para continuar"
								Esperar Tecla
						Fin Segun
						
					Hasta Que op=4
				FinSi
				
			Caso 4:
				PPT2()
			Caso 5:
				Escribir "Salir del Programa"
			De Otro Modo:
				Escribir "opcion Incorrecta"
		FinSegun
		
		Escribir "Desea continuar"
		Escribir "Si -S- ### No -N-"
		Leer salida
	FinMientras
	
FinAlgoritmo

Funcion MenuPrincipal 	
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
	Escribir "##                                       BIENVENIDO a Lab Print 3D                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                           1. CLIENTE                                                            ##"
	Escribir "##                                           2. PROVEEDOR                                                          ##"
	Escribir "##                                           3. LabPrint                                                           ##"
	Escribir "##                                           4. PPT - 2.0                                                          ##"
	Escribir "##                                           5. SALIR                                                              ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "#####################################################################################################################"
FinFuncion

Funcion MenuCLiente
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
	Escribir "##                                             MENU CLIENTE                                                        ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                             1. Presupuesto                                                      ##"
	Escribir "##                                             2. Estado                                                           ##"
	Escribir "##                                             3. Menu Grl                                                         ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "#####################################################################################################################"
FinFuncion

Funcion MenuCliPresupuesto
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
	Escribir "##                                             MENU CLIENTE - 1.Presupuesto                                        ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                             1. Descripcion                                                      ##"
	Escribir "##                                             2. Propiedades                                                      ##"
	Escribir "##                                             3. Menu Anterior                                                    ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "##                                                                                                                 ##"
	Escribir "#####################################################################################################################"
FinFuncion


Funcion FunCargando
	Escribir Sin Saltar "#"
	Esperar 300 Milisegundos;
	Escribir Sin Saltar "##"
	Esperar 300 Milisegundos;
	Escribir Sin Saltar "###"
	Esperar 300 Milisegundos;
	Escribir Sin Saltar "#####"
	Esperar 300 Milisegundos;
	Escribir sin saltar "######"
	Esperar 300 Milisegundos;
	Escribir ""
FinFuncion

// FUNCION PRESUPUESTO
Funcion presupuestador(stockLocal Por Referencia,materiales Por referencia, preciosMateriales Por referencia)
	
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
		si hayStockDisponible(relleno, perimetro, tamanio, stockLocal(existe, colorStock, cantidad)) >4000 Entonces 
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

//CARTEL
Funcion cartel
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
Escribir "#####################################################################################################################"
FinFuncion

//FIN CARTEL

//TORNCO MARTIN
//Funcion Carga Tamaño - Martin
Funcion tamanio <- validarTamanio(tam)
    Definir tamanio Como Entero
    Definir esValido Como Logico
    esValido <- Falso
    
    Mientras No esValido Hacer
        Escribir "INGRESE EL LARGO DE LA IMPRESION EN CM: "
        Leer tamanio
        
        // Verificar que el valor ingresado es un número natural entre 1 y 15
        Si tamanio >= 1 y tamanio <= 15 Entonces
            esValido <- Verdadero
        SiNo
            Escribir "Error: Debe ingresar un número entre 1 y 15. Inténtelo de nuevo."
        FinSi
    FinMientras
	
FinFuncion

	// Funcion que valida quer el porcentaje de relleno este entre 1 y 100
	Funcion rell <- validarRelleno(a)
		Definir rell Como Entero
		Definir esValido Como Logico
		esValido <- Falso
		
		Mientras No esValido Hacer
			Escribir "INGRESE EL PORCENTAJE DE RELLENO"
			Leer rell
			
			// Verificar que el valor ingresado es un número natural entre 1 y 15
			Si rell >= 1 y rell <= 100 Entonces
				esValido <- Verdadero
			SiNo
				Escribir "Error: Debe ingresar un número entre 1 y 100. Inténtelo de nuevo."
			FinSi
		FinMientras
	FinFuncion

// Funcion que valida quer el tamanio sea acorde, entre 1 y 4... se puede modificar claro
Funcion peri <- validarPerimetro(a)
    Definir peri Como Entero
    Definir esValido Como Logico
    esValido <- Falso
    
    Mientras No esValido Hacer
        Escribir "INGRESE EL PERIMETRO DE LA IMPRESION EN CM, ENTRE 1 Y 4"
        Leer peri
        
        // Verificar que el valor ingresado es un número natural entre 1 y 15
        Si peri >= 1 y peri <= 4 Entonces
            esValido <- Verdadero
        SiNo
            Escribir "Error: Debe ingresar un número entre 1 y 4. Inténtelo de nuevo."
        FinSi
    FinMientras
FinFuncion

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


Funcion matExiste <- materialExisteEnStock(materiales Por Referencia,material Por Valor)
	i<-1
	matExiste<-0
	Mientras i<3 Hacer
		si materiales[i] = material Entonces
			matExiste<-i
		FinSi
		i<-i+1
	FinMientras
FinFuncion

Funcion restaStock <- hayStockDisponible(relleno Por Valor, perimetro Por Valor,tamanio Por Valor , stockDispo Por Valor)
	Definir volumen, cantidad, restaStock ,stock como entero 
	Escribir "valor perimetro: ",perimetro
	perimetro<- perimetro +1
	cantidad<-0
	volumen<- relleno*perimetro*tamanio
//	Escribir  "El volumen es ",volumen
//	Escribir  "El stockDispo es ",stockDispo
//	Escribir  "El restaStock es ",restaStock
	restaStock<- stockDispo- volumen
	Escribir  "queda disponible tanto stock ",restaStock
FinFuncion

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

//resta el stock
Funcion finalizacionCompra(relleno Por Valor, perimetro Por Valor,tamanio Por Valor , stockDispo Por Referencia)
	Definir volumen, cantidad, restaStock ,stock como entero 
	perimetro<- perimetro +1
	cantidad<-0
	volumen<- relleno*perimetro*tamanio
	stockDispo<- stockDispo- volumen
FinFuncion

Funcion presupuesto<- solicitudPrespuesto (relleno,perimetro,tamanio,precioMat)
	presupuesto<- precioMat  *(perimetro+tamaño)* relleno
FinFuncion

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
				Escribir " Pago realizado con exito"
                esValido <- Verdadero
				Escribir "Ingrese una tecla para continuar"
				Esperar Tecla
            CASO "2":
                Escribir "Ud seleccionó Tarjeta de Crédito"
				DNI <- validarDNI(a)
				numeroTarjeta <- validarNro16(a)
				codigoSeguridad <- validarNro3(a)
				// Mostrar los datos ingresados
				Escribir "Datos de la tarjeta ingresados:"
				Escribir "DNI: ", DNI
				Escribir "Número de tarjeta: ", numeroTarjeta
				Escribir "Código de seguridad: ***"
				Escribir " Pago realizado con exito"
				esValido <- Verdadero
				Escribir "Ingrese una tecla para continuar"
				Esperar Tecla
			CASO "3":
                Escribir "Ud seleccionó Tarjeta de Débito"
				//debito()
				Escribir " Pago realizado con exito"
                esValido <- Verdadero
				Escribir "Ingrese una tecla para continuar"
				Esperar Tecla
            De Otro Modo:
                Escribir "Opción inexistente. Inténtelo de nuevo."
        FinSegun
		
	FinMientras
FinFuncion	


//NUEVO CODIGO BILLETE
Funcion billetes(precio Por Valor, PAGOREALIZADO Por Referencia)
    Definir pago, devolver, denominaciones Como Real
    Definir i, cantidades Como Entero
    Dimensión denominaciones[16]
    Dimensión cantidades[16]
    
    // Denominaciones disponibles
    denominaciones[1] <- 10000
    denominaciones[2] <- 5000
    denominaciones[3] <- 1000
    denominaciones[4] <- 500
    denominaciones[5] <- 200
    denominaciones[6] <- 100
    denominaciones[7] <- 50
    denominaciones[8] <- 20
    denominaciones[9] <- 10
    denominaciones[10] <- 5
    denominaciones[11] <- 2
    denominaciones[12] <- 1
    denominaciones[13] <- 0.50
    denominaciones[14] <- 0.25
    denominaciones[15] <- 0.10
    denominaciones[16] <- 0.05
    
    // Inicializar el arreglo de cantidades
    Para i <- 1 Hasta 16 Hacer
        cantidades[i] <- 0
    FinPara
    
    Escribir "Ingrese el total de la compra: "
    Leer precio
    Escribir "Ingrese con cuánto abona: "
    Leer pago
    
    Si pago < precio Entonces
        PAGOREALIZADO <- 0
        Escribir "El monto ingresado no es suficiente para realizar el pago."
    SiNo
        devolver <- pago - precio
        PAGOREALIZADO <- 1
        Escribir "Cambio total a devolver: ", devolver
        
        // Calcular el cambio en billetes y monedas
        Para i <- 1 Hasta 16 Hacer
            Mientras devolver >= denominaciones[i] Hacer
                devolver <- devolver - denominaciones[i]
                devolver <- Trunc(devolver * 100) / 100 // Evitar errores de precisión
                cantidades[i] <- cantidades[i] + 1
            FinMientras
        FinPara
        
        // Mostrar el desglose del cambio
        Para i <- 1 Hasta 16 Hacer
            Si cantidades[i] > 0 Entonces
                Escribir "Se devuelven ", cantidades[i], " de $", denominaciones[i]
            FinSi
        FinPara
    FinSi
FinFuncion

//FIN CODIGO BILLETE NUEVO

///aca va la funcion ingresar tarjeta
Funcion DNI <- validarDNI(a)
    Definir DNI Como Cadena
    Definir i, longitudo Como Entero
    Definir es_valido Como Logico
    
    // Solicitar el ingreso del DNI
    Repetir
        Escribir "Ingrese su DNI (7 u 8 dígitos numéricos): "
        Leer DNI
        longitudo <- Longitud(DNI)
        es_valido <- Verdadero
		
        // Validar longitud
        Si longitudo<7 o longitudo>8 Entonces
            es_valido <- Falso
        FinSi
		
        // Validar que cada carácter sea un número
        Para i <- 1 Hasta longitudo Hacer
            Si  no (SubCadena(DNI,i,i)>= "0" Y (SubCadena(DNI,i,i)) <= "9") Entonces
                es_valido <- Falso
            FinSi
        FinPara
		
        // Mostrar mensaje si no es válido
        Si No es_valido Entonces
            Escribir "El DNI ingresado no es válido. Debe contener solo números y tener 7 u 8 dígitos."
        FinSi
    Hasta Que es_valido
FinFuncion

// Validar Numero de Tarjeta de Credito
Funcion NRO <- validarNro16(a)
    Definir NRO Como Cadena
    Definir i, longitudo Como Entero
    Definir es_valido Como Logico
    
    // Solicitar el ingreso del DNI
    Repetir
        Escribir "Ingrese el Nro : "
        Leer NRO
        longitudo <- Longitud(NRO)
        es_valido <- Verdadero
		
        // Validar longitud
        Si longitudo<>16 Entonces
            es_valido <- Falso
        FinSi
		
        // Validar que cada carácter sea un número
        Para i <- 1 Hasta longitudo Hacer
            Si  no (SubCadena(NRO,i,i)>= "0" Y (SubCadena(NRO,i,i)) <= "9") Entonces
                es_valido <- Falso
            FinSi
        FinPara
		
        // Mostrar mensaje si no es válido
        Si No es_valido Entonces
            Escribir "El Nro ingresado no es válido."
        FinSi
    Hasta Que es_valido
FinFuncion

// CODIGO de Seguridad Tarjeta de Crédito
Funcion NRO <- validarNro3(a)
    Definir NRO Como Cadena
    Definir i, longitudo Como Entero
    Definir es_valido Como Logico
    
    // Solicitar el ingreso del Nro
    Repetir
        Escribir "Ingrese el Nro : "
        Leer NRO
        longitudo <- Longitud(NRO)
        es_valido <- Verdadero
		
        // Validar longitud
        Si longitudo<>3 Entonces
            es_valido <- Falso
        FinSi
		
        // Validar que cada carácter sea un número
        Para i <- 1 Hasta longitudo Hacer
            Si  no (SubCadena(NRO,i,i)>= "0" Y (SubCadena(NRO,i,i)) <= "9") Entonces
                es_valido <- Falso
            FinSi
        FinPara
		
        // Mostrar mensaje si no es válido
        Si No es_valido Entonces
            Escribir "El Nro ingresado no es válido."
        FinSi
    Hasta Que es_valido
FinFuncion

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

//???
Funcion num_tarj <-validarNumTarjeta(num)
	definir i,num_tarjeta,iguales Como Entero
	i<-0
	num_tarjeta<-1
	Mientras  num < i Hacer
		si num[i]= num[i+1] Entonces
			iguales<-iguales+1
		FinSi
	FinMientras
	si iguales >3 Entonces
		num_tarjeta<-0
	FinSi
FinFuncion

//Funciones Negocio

//Validar Usuario Passwd
funcion x <- validarUsuarioContrasena
// Definir las variables
Definir usuario, contrasena Como Caracter
Definir accesoPermitido Como Logico
accesoPermitido <- Falso
x<-0
Mientras No accesoPermitido Hacer
	// Solicitar al usuario que ingrese el nombre de usuario
	Escribir "Ingrese el nombre de usuario: "
	Leer usuario
	// Solicitar al usuario que ingrese la contraseña
	Escribir "Ingrese la contraseña: "
	Leer contrasena
	// Validar el nombre de usuario y la contraseña
	Si usuario = "Admin23" y contrasena = "insptn50" Entonces
		accesoPermitido <- Verdadero
		x<-1
		Escribir "Acceso permitido. ¡Bienvenido!"
	SiNo
		Escribir "Usuario o contraseña incorrectos. Inténtelo de nuevo."
	FinSi
FinMientras
FinFuncion

//Mostrar Stock
Funcion mostrarStock(materiales, stockLocal)
//preciosMateriales[4]<-8000
	
	Escribir "Stock de materiales en el negocio:"
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
		cartel()
        Escribir "  Material: ", materiales[i]
        Escribir "	 COLOR NEGRO: ", stockLocal[i,1,1], " cm"
        Escribir "  COLOR ROJO: ", stockLocal[i,2,1], " cm"
		Escribir " Presione una tecla para ver el Siguiente material"
		Esperar Tecla
    FinPara
FinFuncion
//FIN

//Mostrar Stock Proveedor


//validar producto

Funcion x <- validarProducto(mat, col, cantSolicitada, stock)
    Definir i, cantidadEnStock Como Entero
    x <- "No"  // Asumimos que el producto no está disponible o no hay suficiente cantidad
    // Búsqueda en el stock
    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Si stock[i,1] = mat Y stock[i,2] = col Entonces
            cantidadEnStock <- ConvertirANumero(stock[i,4])  // Convertir la cantidad en stock a número
            Si cantSolicitada <= cantidadEnStock Entonces
                x <- "Sí"  // Producto y cantidad disponibles
            FinSi
			// Salimos del ciclo ya que el producto fue encontrado
        FinSi
    FinPara
FinFuncion
// Fin validat producto

//Validar Catidad Pedida
Funcion NRO <- numeroSolValido
    Definir NRO Como Cadena
    Definir i, longitudo Como Entero
    Definir es_valido Como Logico
    // Solicitar el ingreso del DNI
    Repetir
        Escribir "Ingrese el Nro : "
        Leer NRO
        longitudo <- Longitud(NRO)
        es_valido <- Verdadero
        // Validar longitud
        Si longitudo>1000 y longitudo<0 Entonces
            es_valido <- Falso
        FinSi
        // Validar que cada carácter sea un número
        Para i <- 1 Hasta longitudo Hacer
            Si  no (SubCadena(NRO,i,i)>= "0" Y (SubCadena(NRO,i,i)) <= "9") Entonces
                es_valido <- Falso
            FinSi
        FinPara
        // Mostrar mensaje si no es válido
        Si No es_valido Entonces
            Escribir "DEBE INGRESAR UNA CANTIDAD MAYOR A 0 Y MENOR A 1000."
        FinSi
    Hasta Que es_valido
FinFuncion
// FIN
// FUNCION PEDIR STOCK
Funcion solicitarStockProveedor(stockProveedor)
	
	intentos <- 0
    esValido <- "No"
    
    // Ciclo para permitir hasta 3 intentos
    Mientras intentos < 3 Y esValido = "No" Hacer
        ///reutilizar funciones de color, material.
		
		Escribir "Ingrese el material que desea solicitar (Ej: ABS, PLA): "
        Leer material
		Mientras material<>"ABS" y material<>"PLA"  Hacer
			Escribir material
			Escribir "INGRESE UN MATERIAL VALIDO: ABS, PLA"
			Leer material
			material<-MAYUSCULAS(material)
		FinMientras
        Escribir "Ingrese el color del material (Ej: NEGRO, ROJO): "
        Leer color
		Mientras color<>"ROJO" y color<>"NEGRO"  Hacer
			Escribir color
			Escribir "INGRESE UN COLOR VALIDO: NEGRO, ROJO"
			Leer color
			color<-MAYUSCULAS(color)
		FinMientras
        //Escribir "Ingrese la cantidad solicitada: "
        //Leer cantidadSolicitada
        cantSolicitada<-numeroSolValido()
		Escribir "Luego de validar la cantidad vale: " ,cantSolicitada
		
        // Llamada a la función para validar existencia en stock y cantidad
        esValido <- validarProducto(material, color, cantidadSolicitada, stockProveedor)
        
        Si esValido = "Sí" Entonces
            Escribir "Aca debo restar el stock, y ver si el sueldo de la empresa es suficiente para abonar el material."
			
			
			
			///PRESUPUESTO POR CANT MAT * PRECIO
			Definir  index Como Entero
			index<-selecionarProdu(material, color, stockProveedor)
			Definir cantMat,PrecioMat Como caracter
			definir cantidadMaterial,precioMaterial,presupuestoProvedor,cantS Como Entero
			cantMat<- stockProveedor[index,4]
			PrecioMat<-stockProveedor[index,3]
			cantidadMaterial<-ConvertirANumero(cantMat)
			precioMaterial<-ConvertirANumero(PrecioMat)
			cantS<-ConvertirANumero(cantSolicitada)
			Escribir "Luego de pasarla a numero vale : " ,cantS
			si canS<=cantidadMaterial Entonces
				presupuestoProvedor<-cantS*precioMaterial
				Escribir "El presupuesto por lo solicitado es: ",presupuestoProvedor
				Repetir
					Definir conf Como Cadena
					Escribir "Ingrese SI acepta el presupuesto o NO para comprarlo: "
					Leer conf
				Hasta Que conf="SI" o conf="NO"
				conf<-Mayusculas(conf)
				si conf="SI" Entonces
					si dineroEmpresa>=presupuestoProvedor
						Definir x Como Entero
						Definir p Como Caracter
						x<-cantidadMaterial-canS
						p<-ConvertirATexto(x)
						stockProveedor[index,4]<-p
						
						
						///Pasar la variable(stockLocal) a la funcion y sumarle lo comprado que seria canS
						
					FinSi
					///SI PRECIO <= dineroEmpresa TODO OK, RESTO PROVEEDOR Y 
					///SUMO AL STOCK LOCAL -> LUEGO DE UN LAPSO DE TIMEMPO
					
					
				FinSi
			FinSi
			
			///PARA SIMULAR LA ENTREGA DEL MISMO
			
		SiNo
            intentos <- intentos + 1
            Si intentos < 3 Entonces
                Escribir "Producto no encontrado en el stock o cantidad insuficiente. Intento ", intentos, " de 3."
                Escribir "Por favor, intente nuevamente."
            FinSi
        FinSi
    FinMientras
    
    // Mensaje si se alcanzan 3 intentos sin éxito
    Si esValido = "No" Entonces
        Escribir "Ha alcanzado el límite de intentos. La solicitud no puede ser procesada."
    FinSi
	
FinFuncion

Funcion sele <- selecionarProdu(mat, col, stock)
    Definir i Como Entero
    cumpleProd <- "No"  // Asumimos que el producto no está en stock inicialmente
    
    // Recorremos el arreglo para verificar el material y color
    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Si stock[i, 1] = mat Y stock[i, 2] = col Entonces
            cumpleProd <- "Sí"
			sele<-i// Producto encontrado
			// Terminamos la búsqueda
        FinSi
    FinPara
FinFuncion
// FIN PEDIR STOCK

// PROVEEDOR

//Mostrar StockProveedor
Funcion mostrarStockProv(stockProveedor)
	
	Escribir "Stock de materiales en el negocio:"
    Para i <- 1 Hasta 4 Con Paso 1 Hacer
		cartel()
        Escribir " MATERIAL: ", stockProveedor[i,1]
		escribir " COLOR: ",stockProveedor[i,2]
        Escribir " CANTIDAD: ", stockProveedor[i,3]
		Escribir " PRECIO: $", stockProveedor[i,4]
		Escribir " Presione una tecla para ver el Siguiente material"
		Esperar Tecla
    FinPara
FinFuncion
//FIN

// FIN PROVEEDOR


//PPT2.0
Funcion PPT2
	Definir jugarDeNuevo Como Caracter
	Definir opcionElegida Como Caracter
	Definir movJugador Como Caracter
	Definir movMaquina Como Caracter
	Definir esValido Como Logico
	
	Mientras jugarDeNuevo <> "N" y jugarDeNuevo <> "n" Hacer
		
		esValido <- Falso
		
		Mientras No esValido Hacer
			Escribir "Bienvenido al juego de Piedra, Papel o Tijeras"
			Escribir "1. Piedra"
			Escribir "2. Tijera"
			Escribir "3. Papel"
			Escribir "Ingrese un número: "
			Leer opcionElegida
			
			Segun opcionElegida Hacer
				CASO "1":
					movJugador <- "Piedra"
					esValido <- Verdadero
					piedro()
				CASO "2":
					movJugador <- "Tijera"
					esValido <- Verdadero
					tijera()
				CASO "3":
					movJugador <- "Papel"
					esValido <- Verdadero
					papel()
				De Otro Modo:
					Escribir "Opción inexistente. Inténtelo de nuevo."
			FinSegun
			vs()
		FinMientras
		
		oc = Azar(3)
		Si oc == 1 Entonces
			movMaquina <- "Piedra"
			piedro()
		SiNo
			Si oc == 2 Entonces
				movMaquina <- "Tijera"
				tijera()
			SiNo
				movMaquina <- "Papel"
				papel()
			FinSi
		FinSi
		
		
		Escribir "La máquina juega con ", movMaquina
		Escribir "Usted juega con ", movJugador
		
		Si movJugador = movMaquina Entonces
			Escribir "Usted ha empatado"
			c_t()
		SiNo
			Si (movJugador = "Piedra" y movMaquina = "Tijera") o (movJugador = "Tijera" y movMaquina = "Papel") o (movJugador = "Papel" y movMaquina = "Piedra") Entonces
				Escribir "Usted ha ganado"
				trof()
			SiNo
				Escribir "Usted ha perdido"
				c_t()
			FinSi
		FinSi
		
		Escribir "¿Desea jugar de nuevo? (S/N)"
		Leer jugarDeNuevo
		
	FinMientras
	
	Escribir "Gracias por jugar. ¡Hasta luego!"
	
FinAlgoritmo

Funcion papel
    Escribir "                                              ";//10
    Escribir "                                              ";//11
    Escribir "                                              ";//12
    Escribir "                  _______                      ";//13
    Escribir "                  | | | |   __                 ";//14
    Escribir "               __ | | | | / /                 ";//15
    Escribir "               \ \| | | |/ /                   ";//16
    Escribir "                \         /                    ";//17
    Escribir "                 \_______/                     ";//18
    Escribir "                   PAPEL                       ";//19
    Escribir "                                              ";//20
FinFuncion

Funcion tijera
    Escribir "                                              ";//10
    Escribir "                                              ";//11
    Escribir "                                              ";//12
    Escribir "                                              ";//13
    Escribir "                  __     __                 ";//14
    Escribir "                  \ \   / /                 ";//15
    Escribir "                   \ \ / /                   ";//16
    Escribir "                  /\ \ _\ \                   ";//13
    Escribir "                 /  |_|   /                    ";//17
    Escribir "                 \_______/                     ";//18
    Escribir "                   TIJERA                       ";//19
    Escribir "                                              ";//20
FinFuncion

Funcion piedro
    Escribir "                                              ";//10
    Escribir "                                              ";//11
    Escribir "                                              ";//12
    Escribir "                                              ";//13
    Escribir "                                             ";//14
    Escribir "                  ______ __                 ";//15
    Escribir "                 /| | | |\ \                       ";//16
    Escribir "                |\|_|_|_|  |                    ";//13
    Escribir "                \         /                    ";//17
    Escribir "                 \_______/                     ";//18
    Escribir "                   PIEDRA                       ";//19
    Escribir "                                              ";//20
FinFuncion

Funcion vs
    
    Escribir "                                              ";//10
    Escribir "                                              ";//11
    Escribir "                                              ";//12
    Escribir "                                              ";//13
    Escribir "             ______      ______         _______________         ";//14
    Escribir "             \     \    /     /         |             |        ";//15
    Escribir "              \     \  /     /          |      _______|       ";//16
    Escribir "               \     \/     /           |_______      |        ";//13
    Escribir "                \          /            |             |          ";//17
    Escribir "                 \________/             |_____________|            ";//18
    Escribir "                                                           ";//19
    Escribir "                                                ";//20
    
FinFuncion

funcion trof
	Escribir "                 .::::::::::::::::::::.                                             ";
	Escribir "          .......:::::::::::::::::::--:......                                             ";
	Escribir "          .:......::::::::::::::::::--.....::                                                ";
	Escribir "           :     .:::::::::-::::::::-:     :.                                             ";
	Escribir "           ..    .:::::::::--:::::::-:    .:                                             ";
	Escribir "            :    .::::::--------::::-.    :.                                           ";
	Escribir "            .:    .::::::-----:::::--    ::                                          ";
	Escribir "             .:   .::::::-----:::::-:   ::                                          ";
	Escribir "              .:.  .::::::::::::::::. .::                                        ";
	Escribir "               ::..::::::::::::::-:.::.                                     ";
	Escribir "                 .::::::::::::::-::..                                     ";
	Escribir "                    .::::::::::::                                    ";
	Escribir "                     .:::::::::.                                ";
	Escribir "                       ..::::.                                ";
	Escribir "                         .::                             ";
	Escribir "                         .::                            ";
	Escribir "                         :::.                            ";
	Escribir "                        .::::                             ";
	Escribir "                        ::::-.                                 ";
	Escribir "                   .----======---:                                  ";
	Escribir "                   +############%#                               ";
	Escribir "                   +############%#                              ";
	Escribir "                   +############%#                               ";
	Escribir "                   +############%#                              ";
	Escribir "                 =#%%%%%%%%%%%%%%%%+                              ";
	Escribir "                .%%%%%%%%%%%%%%%%%%%-            ";
	Escribir "                                                ";
	Escribir "                                                ";
	Escribir "                                                ";
FinFuncion

//Funcion Cara Triste
funcion c_t
	Escribir "                             .::----:..                                              ";
	Escribir "                       .-=+****+++++****+=-.                                            ";
	Escribir "                    .-+**+-:.         .:-+*#*-.                                               ";
	Escribir "                  .=**=:                   .-**+:                                           ";
	Escribir "                .+#*:                         :+#+:                                        ";
	Escribir "               -**-                             :**-                                     ";
	Escribir "              =#+.                               .=#+.                                 ";
	Escribir "             +#=                                   -**.                               ";
	Escribir "            =#=          .:             :.          -#+                           ";
	Escribir "           -#+          :*#=           -#*:          =#=                     ";
	Escribir "          .**.          .+*-           :*+.  .:      .**.                  ";
	Escribir "          -#+                               .*#*=.    -#-            ";
	Escribir "          +#:                               -#=-+#+.  .**         ";
	Escribir "          *#.                               =#:  :**.  *#.      ";
	Escribir "          *#.                               -#-   +#:  *#.      ";
	Escribir "          +#.                               .**=-=#+. .*#.      ";
	Escribir "          =#-                .:-===-:.       .-=+=-.  .**       ";
	Escribir "           -#+             :=**++===++**=:             -#-      ";
	Escribir "           .**:          :*#+-.       .:+**-          .**.        ";
	Escribir "            :#*.         -=:             .=-          =#-          ";
	Escribir "             =#=                                     =#+          ";
	Escribir "              =#+                                   =#+.          ";
	Escribir "               =#+.                               .+#=.           ";
	Escribir "                 **=.                            -**-             ";
	Escribir "                  =**-.                       .-*#=.               ";
	Escribir "                   .=**+-.                 .:=**=:                 ";
	Escribir "                      :=***=-:..     ..:-=***+:                   ";
	Escribir "                         :-+*************+-:.                       ";
	Escribir "                              ..:::::...                      ";
FinFuncion
//FIN FUNCION PPT2.0
FinFuncion