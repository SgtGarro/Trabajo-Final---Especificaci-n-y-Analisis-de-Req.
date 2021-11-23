Feature: HU19: Como usuario, quiero usar el micrófono de mi celular para entablar conversación con mi receptor

    Scenario: E01: Ingreso de micrófono externo a través de un auricular
    TA01
    Given estoy en la plena cita virtual con mi nutricionista
    When conecte unos auriculares a mi dispositivo móvil
    Then el sistema usará el micrófono externo del auricular para la videoconferencia
    Examples:
        |   Paciente   | Conexion cita | Uso de microfonos y dispositivos de audio alternos |
        |  Pepe Milos  | nutricionista | Dispositivo conectado | Dispositivo desconectado  | conexión perdida |
    
        NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO