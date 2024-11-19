Funcion numeroTarjeta <- validarTarjeta(a)
    Definir numeroTarjeta Como Caracter
    Definir long Como Entero
    Definir esValido Como Logico
    esValido <- Falso
    
    Mientras No esValido Hacer
        // Solicitar al usuario que ingrese su número de tarjeta
        Escribir "Ingrese su número de tarjeta: "
        Leer numeroTarjeta
        
        // Obtener la longitud del número de tarjeta ingresado
        long <- Longitud(numeroTarjeta)
        
        // Verificar si la longitud del número de tarjeta es válida
        Si long >= 16 y long <= 18 Entonces
            esValido <- Verdadero
        SiNo
            Escribir "Error: El número de tarjeta debe tener entre 16 y 18 dígitos. Inténtelo de nuevo."
        FinSi
    FinMientras
    
FinFuncion

Funcion codigoSeguridad <- validarCodigoSeguridad(a)
    Definir codigoSeguridad Como Caracter
    Definir long Como Entero
    Definir esValido Como Logico
    esValido <- Falso
    
    Mientras No esValido Hacer
        // Solicitar al usuario que ingrese el código de seguridad
        Escribir "Ingrese el código de seguridad (3 dígitos): "
        Leer codigoSeguridad
        
        // Obtener la longitud del código de seguridad ingresado
        long <- Longitud(codigoSeguridad)
        
        // Verificar si la longitud del código de seguridad es válida
        Si long = 3 Entonces
            esValido <- Verdadero
        SiNo
            Escribir "Error: El código de seguridad debe tener 3 dígitos. Inténtelo de nuevo."
        FinSi
    FinMientras
FinFuncion
