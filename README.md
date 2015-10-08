# calculator-api-challenge

El objetivo de este repositorio es recopilar diferentes soluciones para un mismo desafío, como implementar una API calculadora en diferentes lenguajes o frameworks.

## Especificaciones

* Debe aceptar las consultas por POST con la siguiente estructura

    {
        operation:"+-*/",
        numbers:[...]
    }


* Debe retorna un JSON con la siguientes estructura

    {
        result:"..."
    }



Si alguien quiere agregar una alternativa puede hacer un pull request con el enlace al repo donde esta su solución.

## Soluciones





# calculator-api-challenge

El desafío consiste en realizar una aplicación web que funcione como calculadora. Se permite el uso de cualquier lenguaje y framework de programación. 


## Condiciones del programa:
* La petición debe ser con el método POST
* Debe responder en el puerto 8888
* Debe tener un parámetro de entrada llamado "query" que debe ser un "json" con la siguiente estructura:
    * op: operación, el contenido es un carácter que puede ser "+", "-", "*" y "/"
    * ops: valores, son un arreglo de cualquier largo, de número "float"
* En caso de que haya algún error que resulte imposible realizar el cálculo se debe entregar un "null"

## Ejemplos:

### Ejemplo 1:
    (Ojo que no escapo algunos caracteres, para que sea más fácil de entender el ejemplo)

#### Entrada:

        localhost:8888/?query={op:'+',ops:[1.1,2.2,3.3]}
#### Cálculo:

        1.1+2.2+3.3


#### Salida:

        6.66


    Ejemplo 2:

    Entrada:

        localhost:8888/?query={op:'/',ops:[1.1,2.2,3.3]}


    Cálculo:

        1.1/2.2/3.3


    Salida:

        0.1515


Entregable:

Se debe crear un proyecto en github con:

    El código de la aplicación
    Un dockerfile con todo lo necesario para que corra la aplicación. (En este punto podemos ayudar para que no sea tan dificil)

Prueba:

Vamos a realizar pruebas automatizadas con Jmeter para ver cual es el framework que tiene mejor desempeño.
