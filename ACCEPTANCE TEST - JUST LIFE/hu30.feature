Feature: HU30: Como nutricionista, quiero acceder al registro diario de actividad física realizada por el paciente para llevar un control de seguimiento.
   
    Scenario: E01: Si existe mínimo un registro de actividad física del paciente
        TA01
        Given que me encuentro en la interfaz de la aplicacion para nutricionista
        When elija el paciente que tenga en lista y presione acceder
        Then el sistema me mostrará el registro de actibidad física del paciente(Mañana-Tarde-Noche)

        Examples:
        |    Paciente     | Número | Actividad física de Manolo Guerra |
        | Manolo Guerra   |   1    | Mañana- Correr por el parque | Tarde- Ejercicios en casa | Noche- Caminata|

    Scenario: E01: No existe un mínimo registro de actividad física del paciente
        TA02
        Given que me encuentro en la interfaz de la aplicacion para nutricionistas
        When elija el paciente que tenga en la lista y presione acceder
        Then la aplicación mostrara un mensaje ("El paciente no registra actividad física...")

        Examples:
        |   Paciente    |Número| Mensaje|
        | Manolo Guerra |   1  | El paciente no registra actividad física...|

