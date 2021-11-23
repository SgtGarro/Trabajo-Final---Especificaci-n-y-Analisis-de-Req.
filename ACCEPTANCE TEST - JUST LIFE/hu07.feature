Feature: HU07: Como paciente, quiero registrar alimentos no registrados con sus calorias en la aplicación para que mi control de la dieta sea la más asertiva.
    Scenario: E01: Campos completos
        Given me encuentro en el formulario de registro de alimentos no registrados
        When rellene los campos de alimento, calorias y presione agregar
        Then el sistema me mostrará un mensaje de confirmación

        Examples:
            |  alimento  | calorias |          mensaje          |
            |   tacaho   |   1400   | "Se agrego correctamente" |

    Scenario: E02: Campo de calorias incompleto
        Given me encuentro en el formulario de registro de alimentos no registrados
        When rellene el campo de alimento, deje en blanco en calorias y presione agregar
        Then el sistema me mostrará un mensaje de verificación

        Examples:
            | alimento | calorias |            mensaje             |
            |  tacaho  |    ""    | "Rellene el campo de calorias" |
        
    Scenario: E03: Campo de alimento incompleto
        Given me encuentro en el formulario de registro de alimentos no registrados
        When deje en blanco el campo de alimento, rellene en calorias y presione agregar
        Then el sistema me mostrará un mensaje de verificación

        Examples:
            | alimento | calorias |             mensaje             |
            |    ""    |   1400   | "Rellene el campo del alimento" |

    Scenario: E04: Campos incompletos
        Given me encuentro en el formulario de registro de alimentos no registrados
        When deje en blanco los alimentos, calorias y presione agregar
        Then el sistema me mostrará un mensaje de verificación

        Examples:
            | alimento | calorias |                  mensaje                    |
            |    ""    |    ""    | "Rellene los campos de alimentos y calorias"|
    
    Scenario: E05: Campo de calorias con una letra
        Given me encuentro en el formulario de registro de alimentos no registrados
        When rellene el campo de calorias con alguna letra y presione agregar
        Then el sistema me mostrará un mensaje de verificación

        Examples:
            | alimento |  calorias  |                mensaje                  |
            |  tacaho  |  1400cal   | "Ingrese valores numericos en calorias" |



