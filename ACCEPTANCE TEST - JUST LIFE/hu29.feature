Feature: HU029 Como nutricionista, quiero acceder al registro diario de alimentos consumidos del paciente para llevar un control de seguimiento.
    Scenario: E01: Si existe mínimo un registro de comida del paciente
        TA01
        Given que me encuentro en la interfaz de la aplicacion para nutricionista
        When elija el paciente que tenga en lista y presione acceder
        Then el sistema me mostrará el registro de alimentos del paciente (Mañana-Media Mañana-Tarde-Noche)

        Examples:
        |    Paciente     | Número | Registro de alimentos de..(Nombre del paciente) |
        |  Manolo Guerra  |   1    | Mañana- Pan | Media Mañana-Pollo a la brasa | Tarde No registrado | Noche No registrado| 

    Scenario: E02: No existe ningún registro de comida del paciente
        TA02
        Given que me encuentro en la interfaz de la aplicacion para nutricionistas
        When elija el paciente que tenga en la lista y presione acceder
        Then la aplicación mostrara un mensaje ("Ningun registro de comida existente del paciente...")

         Examples:
        |    Paciente     |Número| Mensaje                                           |
        |  Manolo Guerra  |   1  | Ningún registro de comida existente del paciente! |


