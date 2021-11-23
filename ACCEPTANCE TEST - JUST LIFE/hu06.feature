Feature: HU06: Como paciente, quiero visualizar los alimentos consumidos durante el día para saber cómo estoy llevando la dieta.
    Scenario: E01: Hay alimentos registrados
    TA01
        Given que me encuentro en el apartado de registros de consumo diario
        When haya ingresado previamente elementos a mi registro y presione visuzalizar
        Then el sistema me mostrara la lista completa

        Examples:
            |        registro        |         lista completa        | 
            | Contiene "n" alimentos | "Alimento consumidos del dia" | 
    
    Scenario: E02: Ningún alimento registrado
    TA02
        Given que me encuentro en el apartado de registros de consumo diario
        When mi registro este vacio y presione visualizar
        Then el sistema mostrar un mensaje de invalidación

        Examples:
            |     registro    |       mensaje de invalidación      |
            | Ningún alimento | "Usted no ingreso ningún alimento" |