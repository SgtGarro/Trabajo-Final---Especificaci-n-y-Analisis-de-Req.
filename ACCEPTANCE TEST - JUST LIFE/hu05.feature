Feature: HU05: Como paciente, quiero registrar los alimentos que haya conComo paciente, quiero registrar los alimentos que haya conComo paciente, quiero registrar los alimentos que haya Coconsumido durante el día para tener un cálculo de las calorías consumidas durante el día.sumido durante el día para tener un cálculo de las calorías consumidas durante el día.sumido durante el día para tener un cálculo de las calorías consumidas durante el día.
    Scenario: E01: Alimento seleccionado
        TA01
        Given que me encuentro en el apartado de registros de consumo diario
        When seleccione un alimento del menú y presione agregar
        Then se mostrará un mensaje de confirmación y se actualizará el registro

        Examples:
        | alimento |             mensaje              |
        |   mango  | "Alimento agregado exitosamente" |
    
    Scenario: E02: Ningún alimento seleccionado
        TA02
        Given que me encuentro en el apartado de registros de consumo diario
        When no seleccione ningún alimento del menú y presione agregar
        Then se mostrara un mensaje de invalidación

        Examples:
        | alimento |             mensaje                | 
        |    ""    | "No hay un alimento seleccionado." |
