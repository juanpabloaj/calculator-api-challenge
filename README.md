# calculator-api-challenge

Fecha de entrega: Martes 3 de Noviembre.

El desafío consiste en realizar una API web que funcione como calculadora. Se permite el uso de cualquier lenguaje y framework de programación.

La idea es que cada participante pueda explicar brevemente como hizo su aplicación y nos demuestre las bondades de su elección.

## Condiciones del programa:

* Debe responder en el puerto 8888.
* Debe aceptar requerimientos HTTP utilizando el método POST.
* Los requerimientos deben tener el encabezado: `Content-Type: application/x-www-form-urlencoded`.
* El cuerpo de cada requerimiento debe tener un ítem llamado "query", cuyo valor debe ser un "json" con la siguiente estructura:
    * op: operación, el contenido es un carácter que puede ser `"+"`, `"-"`, `"*"` y `"/"`.
    * ops: operandos, son un arreglo de números flotantes de cualquier longitud.
* La respuesta debe tener el encabezado: `Content-Type: application/json`.
* El cuerpo de la respuesta debe ser un objeto json que contenga el atributo `result` con el resultado de la operación.
* El resultado de la operación debe ser el resultado de la operación descrita al concatenar cada uno de los operandos con la operación como separador. Por ejemplo si el requerimiento es `{"op": "-", "ops": [1, 2, 3]}`, se debe calcular `1-2-3`. En el caso especial de tener solo un operando, la concatenación de un operando es el mismo operando y la respuesta debe ser el operando sin ninguna modificación.
* En caso de que ocurrir algún error, que haga imposible realizar el cálculo, se debe entregar `null`.
* El caso en que no hay ningún operando también se debe retornar `null`.

## Ejemplos 1:
    (Ojo que no escapo los caracteres, para que sea más fácil de entender el ejemplo)

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
