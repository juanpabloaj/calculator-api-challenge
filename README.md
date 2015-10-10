# calculator-api-challenge

FECHA:

El desafío consiste en realizar una aplicación web que funcione como calculadora. Se permite el uso de cualquier lenguaje y framework de programación. 

La idea es que cada participante pueda explicar brevemente como hizo su aplicación, nos demuestre las bondades de su elección.

## Condiciones del programa:
* La petición debe ser con el método POST
* Debe responder en el puerto 8888
* Debe tener un parámetro de entrada llamado "query" que debe ser un "json" con la siguiente estructura:
    * op: operación, el contenido es un carácter que puede ser "+", "-", "*" y "/"
    * ops: valores, son un arreglo de cualquier largo, de número "float"
* En caso de que haya algún error que resulte imposible realizar el cálculo se debe entregar un "null"

## Ejemplos 1:
    (Ojo que no escapo los carácteres, para que sea más fácil de entender el ejemplo)

Entrada:  localhost:8888/?query={op:'+',ops:[1.1,2.2,3.3]}

Cálculo:  1.1+2.2+3.3

Salida:  6.66

## Ejemplo 2:

Entrada: localhost:8888/?query={op:'/',ops:[1.1,2.2,3.3]}

Cálculo: 1.1/2.2/3.3
 
Salida:  0.1515


## Entregable:

Se debe crear un proyecto en github con:

* El código de la aplicación
* Un dockerfile con todo lo necesario para que corra la aplicación. 
  * En este punto podemos ayudar a aquellos que no tengan la experiencia en docker.

### Dockerfile

El archivo dockerfile debe tener como base a debian jessie, osea la primera linea debe tener

    FROM buildpack-deps:jessie

## Pruebas del Desafío:

Vamos a realizar pruebas automatizadas con Jmeter para ver cual es el framework que tiene mejor desempeño.


Si estás interesado en participar por favor avísanos que lenguaje y que framework planeas usar.

Suerte y que gane el mejor lenguaje!

## Soluciones

* [Jorge Riquelme - go](https://github.com/jriquelme/calculator-api-challenge-go)
* [Juan Pablo Abarzua - nodejs/express ](https://github.com/juanpabloaj/express-calculator-api)
