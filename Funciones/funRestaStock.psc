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
