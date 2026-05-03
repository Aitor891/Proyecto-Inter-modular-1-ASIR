# Informe – Lenguajes de Marcas Aitor Hernández Alonso 
1º ASIR ONLINE

## Datos representados en el XML

El archivo XML desarrollado representa la gestión de reservas dentro del sistema del proyecto. En concreto, se modelan tres tipos principales de información:

* Clientes: incluyen identificador, nombre y correo electrónico.
* Clases: contienen información sobre las actividades disponibles, como nombre y horario.
* Reservas: relacionan clientes con clases, indicando el estado de la reserva (activa o cancelada).

La estructura del XML está organizada de forma jerárquica, comenzando por el elemento raíz reservas, que contiene los distintos bloques de información. Además, se utilizan atributos de tipo ID e IDREF para relacionar correctamente clientes, clases y reservas, evitando duplicidades y garantizando coherencia en los datos.


## Validación mediante DTD

El archivo XML se valida mediante un DTD externo (modelo.dtd), el cual define:

* La estructura de los elementos
* Las relaciones entre ellos
* Las cardinalidades
* Los tipos de atributos (ID, IDREF, enumeraciones)

### Validación mediante línea de comandos

Se puede validar el XML utilizando el siguiente comando:

xmllint --noout --dtdvalid xml/modelo.dtd xml/datos.xml

Si el archivo es correcto, no se mostrará ningún error. En caso contrario, se indicará el problema detectado (estructura incorrecta, atributos inválidos, etc.).

### Validación mediante editor

También se puede validar utilizando editores como Visual Studio Code u otros validadores XML online, los cuales muestran errores en tiempo real.

## Transformación XSLT a HTML

Se ha desarrollado un archivo XSLT (transform.xsl) que permite transformar el XML en un documento HTML visualmente estructurado.

### Ejecución

La transformación se puede visualizar de dos formas:

* Abriendo directamente el archivo XML en el navegador (si incluye la referencia XSLT)
* Ejecutando la transformación mediante herramientas compatibles con XSLT

El XML incluye la siguiente instrucción de procesamiento:

<?xml-stylesheet type="text/xsl" href="../xml/transform.xsl"?>

Esto permite que el navegador aplique automáticamente la transformación.

### Resultado

El HTML generado incluye:

* Título del documento
* Listado de reservas
* Información de clientes y clases
* Estructura en forma de tabla

Además, se han aplicado estilos CSS para mejorar la presentación visual.


## Evidencia de validación

La validación del XML se ha documentado mediante capturas incluidas en la carpeta `/docs`, donde se puede observar:

* Validación correcta del XML frente al DTD
* Ejemplo de error en un XML incorrecto (opcional)

Archivos incluidos:

* validacion_dtd.png
* error_dtd.png (opcional)

También se incluye una captura del HTML generado tras aplicar la transformación XSLT:

* transform_html.png


## Integración con el proyecto

El XML desarrollado no es un elemento aislado sino que forma parte del sistema del proyecto.

En concreto, se utiliza como:

* Formato de exportación de datos desde la base de datos del sistema
* Representación estructurada de la información de reservas
* Generación de informes mediante XSLT

El archivo JSON incluido en el proyecto representa la misma información en formato alternativo, facilitando su uso en aplicaciones web o APIs.

De esta forma, el XML se integra dentro del flujo del sistema como un formato estándar para intercambio y visualización de datos.


## Conclusión

La combinación de XML con DTD, XSLT y JSON posibilita una gestión eficiente, validada y reutilizable de la información estructurada. Esta implementación muestra un empleo realista de las tecnologías de marcado en ambientes profesionales. 


