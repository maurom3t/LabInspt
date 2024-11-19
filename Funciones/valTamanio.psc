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
