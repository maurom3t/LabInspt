//resta el stock
Funcion finalizacionCompra(relleno Por Valor, perimetro Por Valor,tamanio Por Valor , stockDispo Por Referencia)
	Definir volumen, cantidad, restaStock ,stock como entero 
	perimetro<- perimetro +1
	cantidad<-0
	volumen<- relleno*perimetro*tamanio
	stockDispo<- stockDispo- volumen
FinFuncion