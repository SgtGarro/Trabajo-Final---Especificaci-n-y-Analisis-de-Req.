Feature: HU35: Como paciente, quiero registrar mi ubicación para que la aplicación recomiende alimentos allegados a mi zona.
    Scenario: 01: Dar permisos a la aplicación
        TA01
        Given que me encuentro en el formulario de permisos de aplicación 
        When acepte brindar permiso  de usar el GPS
        Then se cerrará el formulario y se trabajará a partir de ahora con el GPS

        Examples:
            | Permisos | valor |  Accion  |
            |    GPS   | true  | cerrar formulario - actualizar datos de la zona|

    Scenario: 02: Denegar permisos a la aplicaciòn
        TA02
        Given que me encuentro en el formulario de permisos de aplicaciòn  
        When niegue el permiso de usar el GPS 
        Then la aplicación pedira que ingresaré mi dirección  
        Y buscará una referencia de nuestra ubicación a través de Google Maps 

        Examples:
            | Permisos | valor | Accion |
            |    GPS   | false | Se pedira que ingrese la direccion |


