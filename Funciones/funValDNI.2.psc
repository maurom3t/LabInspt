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
	
    Escribir "DNI válido: ", DNI
FinFuncion