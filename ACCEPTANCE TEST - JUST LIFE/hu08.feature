Feature: HU08: Como paciente, quiero buscar en la base de datos de la aplicación mis alimentos para añadirlos al registro diario de mi dieta.
    Scenario: 01: Alimento encontrado
        TA01
        Given me encuentro en el apartado de búsqueda de alimentos  
        When introduzca el nombre de mi alimento y presione en el botón “Buscar”
        Then el sistema me mostrará el alimento para añadirlo a mi registro de alimentos

        Examples:
            |        Busqueda         |                          contenido encontrado                                   |           añadir en el registro             |
            |    Fettuccini Alfredo   | 2589 calorias => 25g mantequilla | 227g nata | 100g queso parmesano | 1oz harina |   articulo añadido  |  articulo eliminado   |

    Scenario: 02: Alimento no encontrado
        TA02
        Given me encuentro en el apartado de búsqueda de alimentos  
        When introduzca un alimento no registrado en el cuadro de texto 
        Then el sistema me mostrara un mensaje indicando que no se encontró

        Examples:
            |  Busqueda  | contenido encontrado | alimento no encontrado |
            |   Whatsapp  |           ?          |          Error         |


