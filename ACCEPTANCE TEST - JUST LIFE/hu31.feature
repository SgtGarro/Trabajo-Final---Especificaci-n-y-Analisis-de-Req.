Feature: HU31: Como nutricionista, quiero acceder al mapa estadístico del IMC semanal del paciente para verificar sus resultados.
   
    Scenario: E01: Existen registros del peso de parte del paciente
        TA01
        Given que me encuentro en la interfaz de la aplicación para nutricionistas 
        When elija al paciente y el sistema detecte que mi paciente tenga registros de su peso en la semana
        Then la aplicación me mostrará el mapa estadístico IMC del paciente en cuestión(Día+Fecha :IMC:..)

        Examples:
        |    Paciente     | Número | IMC Semanal de Manolo |
        | Manolo Guerra   |   1    | Martes 12- IMC: 25,3 | SÁBADO 16 IMC: 25,5|

    Scenario: E02: No existen registros del peso de parte del paciente
        TA02
        Given que me encuentro en la interfaz de la aplicación para nutricionistas 
        When elija al paciente y el sistema detecte que mi paciente no tiene registros de su peso en la semana
        Then la aplicación me mostrará un mensaje("No existen registros del peso en la semana de parte del paciente...") 

        Examples:
        |    Paciente     | Número | Mensaje |
        |   Manolo Guerra |   1    | No existen registros del peso en la semana de parte del paciente para el IMC...
