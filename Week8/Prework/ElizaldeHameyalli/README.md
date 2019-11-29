# Prework Week 8

### Preguntas de Prework 

### Teoría: 

1. Haz un breve resumen sobre el protocolo HTTP y HTTPS. 
Son Protocolos de aplicación.

**HTTPS:** Hypertext Transfer Protocol Secure o HTTPS es un protocolo de aplicación basado en el protocolo HTTP, destinado a la transferencia segura de datos de hipertexto, es decir, es la versión segura de HTTP.
**HTTP:** Hypertext Transfer Protocol, abreviado HTTP es el protocolo de comunicación que permite las transferencias de información en la World Wide Web. 

- Diferencias con HTTP.  
En el protocolo HTTP las URLs comienzan con "http://" y utilizan por omisión el puerto 80, las URLs de HTTPS comienzan con "https://" y utilizan el puerto 443 por omisión.  
HTTP es inseguro y está sujeto a ataques man-in-the-middle y eavesdropping que pueden permitir al atacante obtener acceso a bancos y a cuentas de un sitio web e información confidencial. HTTPS está diseñado para resistir esos ataques y ser más seguro.

2. ¿Quién is Tim Berners Lee?
Es conocido como el padre del internet. Estableció la primera comunicación entre un cliente y un servidor usando el protocolo HTTP en noviembre de 1989. 

3. ¿Qué signficia URL? (URL es un acrónimo)
Uniform Resource Locator

4. ¿Cómo se construye una URL? (podrías usar un esquema con los diferentes componentes de una URL)
Un URL se clasifica por su esquema, que generalmente indica el protocolo de red que se usa para recuperar, a través de la red, la información del recurso identificado. Un URL comienza con el nombre de su esquema, seguido por dos puntos, seguido por una parte específica del esquema.

Algunos ejemplos de esquemas URL:

El formato general de un URL es: :esquema://máquina/directorio/archivo

También pueden añadirse otro tipo de información:

esquema://usuario:contraseña@máquina:puerto/directorio/archivo
Por ejemplo: https://www.wikipedia.org/

La especificación detallada se encuentra en la RFC 1738, titulada Uniform Resource Locators.

5. ¿Qué es un Uniform Resource Identifier (URI) ? 

Un identificador de recursos uniforme o URI —del inglés uniform resource identifier— es una cadena de caracteres que identifica los recursos de una red de forma unívoca.1​ La diferencia respecto a un localizador de recursos uniforme (URL) es que estos últimos hacen referencia a recursos que, de forma general, pueden variar en el tiempo.

6. Enlista y describe los métodos HTTP.

**GET**

El método GET  solicita una representación de un recurso específico. Las peticiones que usan el método GET sólo deben recuperar datos.

**HEAD**

El método HEAD pide una respuesta idéntica a la de una petición GET, pero sin el cuerpo de la respuesta.

**POST**

El método POST se utiliza para enviar una entidad a un recurso en específico, causando a menudo un cambio en el estado o efectos secundarios en el servidor.

**PUT**
El modo PUT reemplaza todas las representaciones actuales del recurso de destino con la carga útil de la petición.

**DELETE**
El método DELETE borra un recurso en específico.
CONNECT
El método CONNECT establece un túnel hacia el servidor identificado por el recurso.

**OPTIONS**
El método OPTIONS es utilizado para describir las opciones de comunicación para el recurso de destino.
TRACE
El método TRACE  realiza una prueba de bucle de retorno de mensaje a lo largo de la ruta al recurso de destino.

**PATCH**
El método PATCH  es utilizado para aplicar modificaciones parciales a un recurso.

7. Enlista y describe los códigos de status (o de respuesta). 

**100 Respuestas informativas**
*100 Continue*
*101 Switching Protocol*
*102 Processing (WebDAV)*
**200 Respuestas satisfactorias**
200 OK
La solicitud ha tenido éxito. El significado de un éxito varía dependiendo del método HTTP:
GET: El recurso se ha obtenido y se transmite en el cuerpo del mensaje.
HEAD: Los encabezados de entidad están en el cuerpo del mensaje.
PUT o POST: El recurso que describe el resultado de la acción se transmite en el cuerpo del mensaje.
TRACE: El cuerpo del mensaje contiene el mensaje de solicitud recibido por el servidor.
*201 Created*
*202 Accepted*
*203 Non-Authoritative Information*
*204 No Content*
*205 Reset Content*
*206 Partial Content*
*207 Multi-Status (WebDAV)*
*226 IM Used (HTTP Delta encoding)*
**300 Redirecciones**
**400 Errores de cliente**
**500 Errores de servidor**

8. ¿Qué es una query?
Es la parte de una URL que contiene los datos que deben pasar a aplicaciones web como los programas CGI.

9. ¿Para que nos sirve emplear un header HTTP?

Las cabeceras (en inglés headers) HTTP permiten al cliente y al servidor enviar información adicional junto a una petición o respuesta. Una cabecera de petición esta compuesta por su nombre (no sensible a las mayusculas) seguido de dos puntos ':', y a continuación su valor (sin saltos de línea). Los espacios en blanco a la izquierda del valor son ignorados
10. ¿Qué es una API?
Una API es una interfaz de programación de aplicaciones (del inglés API: Application Programming Interface). Es un conjunto de rutinas que provee acceso a funciones de un determinado software.

Son publicadas por los constructores de software para permitir acceso a características de bajo nivel o propietarias, detallando solamente la forma en que cada rutina debe ser llevada a cabo y la funcionalidad que brinda, sin otorgar información acerca de cómo se lleva a cabo la tarea. Son utilizadas por los programadores para construir sus aplicaciones sin necesidad de volver a programar funciones ya hechas por otros, reutilizando código que se sabe que está probado y que funciona correctamente.

11. ¿Qué es JSON?
JSON (JavaScript Object Notation - Notación de Objetos de JavaScript) es un formato ligero de intercambio de datos. Leerlo y escribirlo es simple para humanos, mientras que para las máquinas es simple interpretarlo y generarlo. Está basado en un subconjunto del Lenguaje de Programación JavaScript, Standard ECMA-262 3rd Edition - Diciembre 1999. JSON es un formato de texto que es completamente independiente del lenguaje pero utiliza convenciones que son ampliamente conocidos por los programadores de la familia de lenguajes C, incluyendo C, C++, C#, Java, JavaScript, Perl, Python, y muchos otros. Estas propiedades hacen que JSON sea un lenguaje ideal para el intercambio de datos.

JSON está constituído por dos estructuras:

Una colección de pares de nombre/valor. En varios lenguajes esto es conocido como un objeto, registro, estructura, diccionario, tabla hash, lista de claves o un arreglo asociativo.
Una lista ordenada de valores. En la mayoría de los lenguajes, esto se implementa como arreglos, vectores, listas o sequencias.

12. ¿Qué es un endpoint (server endpoints)?
El punto final del servicio web describe el punto de contacto para un servicio indicando la ubicación física del servicio, o de qué computadora está viniendo y una definición formal de la interfaz para los programas que están tratando de comunicarse con el servicio.

### Swift:

1. Realiza todos los ejemplos de [closures](https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures). 

2. Realiza todos los ejemplos de [opcionales](https://www.hackingwithswift.com/sixty/10/1/handling-missing-data). 
