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