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