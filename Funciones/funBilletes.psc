Algoritmo billetes44
	
	billetes(precio,PAGOREALIZADO)
	
FinAlgoritmo

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