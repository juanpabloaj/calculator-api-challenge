# calculator-api-challenge

Fecha de entrega: Martes 3 de Noviembre.

El desafío consiste en realizar una API web que funcione como calculadora. Se permite el uso de cualquier lenguaje y framework de programación.

La idea es que cada participante pueda explicar brevemente como hizo su aplicación y nos demuestre las bondades de su elección.

## Condiciones del programa:

* Debe responder en el puerto 8888.
* Debe aceptar requerimientos HTTP utilizando el método POST.
* Los requerimientos deben tener el encabezado: `Content-Type: application/x-www-form-urlencoded`.
* El cuerpo de cada requerimiento debe tener item llamado "query", cuyo valor debe ser un "json" con la siguiente estructura:
    * op: operación, el contenido es un carácter que puede ser "+", "-", "*" y "/".
    * ops: operadores, son un arreglo de cualquier largo, de número "float".
* En caso de que ocurrir algún error, que haga imposible realizar el cálculo, se debe entregar un "null".

## Ejemplos 1:
    (Ojo que no escapo los carácteres, para que sea más fácil de entender el ejemplo)

Entrada:  localhost:8888/?query={op:'+',ops:[1.1,2.2,3.3]}

Cálculo:  1.1+2.2+3.3

Salida:  6.66

## Ejemplo 2:

Entrada: localhost:8888/?query={op:'/',ops:[1.1,2.2,3.3]}

Cálculo: 1.1/2.2/3.3

Salida:  0.1515

## Ejemplo curl

    curl --data-urlencode "query={\"op\": \"-\", \"ops\": [3, 1]}" http://localhost:8888

Salida

    2

## Entregable:

Se debe crear un proyecto en github con:

* El código de la aplicación.
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
* [Yolier Galan Tasse - nodejs/total.js](https://github.com/gallegogt/totaljs-calculator-api.git)
