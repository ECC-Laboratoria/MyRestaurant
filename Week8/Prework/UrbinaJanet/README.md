### PREWORK 8 

##### TEORÍA

1. Haz un breve resumen sobre protocolo **HTTP** y **HTTPS**

**HTTP** (*Hypertext Transfer Protocol*) y **HTTPS** (*Hypertext Transfer Protocol Secure*) son protocolos de transferencia de información de Internet entre el navegador del usuario y el servidor donde se aloja una determinada página web.

​											DIFERENCIAS

| HTTP                                                         | HTTPS                                                        |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Protocolo utilizado en un sistema de redes  por el que dos máquinas (cliente y servidor) se comunican. El cliente solicita información al servidor utilizando el protocolo http. El servidor le responde en forma de página web. | Es una combinación de protocolo de transferencia hipertexto (https) y protocolo SSL/TLS. Es una forma más segura de enviar solicitudes al servidor desde el cliente ya que al estar encriptado, nadie puede saber en qué consiste la solicitud. |
| Puede implementarse sobre cualquier otro protocolo en Internet o en otras redes. |                                                              |
| La forma en que los datos viajan desde el Punto A hasta el Punto B,  no es asunto de HTTP. | HTTPS diferencia a un emisor y a un receptor de los otros. SSL toma los datos, van o vienen, y los encripta. Esto significa que SSL usa un algoritmo matemático para ocultar el verdadero significado de los datos. |
| HTTP no requiere validación de dominio                       | HTTPS sí requiere validación de dominio                      |
| La URL comienza con http://                                  | La URL comienza con https://. Además, el navegador suele añadir un icono al lado de la URL para certificar que ofrece una conexión segura |
| El puerto utilizado para la comunicación es el 80            | En el caso de https el puerto es el 443.                     |
| No existe cifrado                                            | Gracias al cifrado ofrece mayor seguridad para acceder a los contenidos que ofrece Internet ya que los datos sólo pueden ser vistos por el cliente y el servidor. |
| No requiere de certificado                                   | Para que una web sea https debe tener un certificado SSL.    |
| Funciona a nivel de aplicación (séptima capa) del Modelo OSI, que es la capa más alta. | Se realiza en una capa más baja ya que funciona a nivel de transporte. |



2. ¿Quién es Tim Berners Lee?

   Es un científico de la computación británica, conocido por ser el padre de la ***World Wide Web***. Estableció la primera comunicación entre un cliente y un servidor usando el protocolo *HTTP* en noviembre de 1989. En octubre de 1994 fundó el Consorcio de la ***World Wide Web (W3C)*** para supervisar y estandarizar el desarrollo de las tecnologías sobre las que se fundamenta la Web y que permiten el funcionamiento de Internet.

   Él y su grupo crearon lo que por sus siglas en inglés se denomina Lenguaje **HTML** (*Hyper Text Markup Language*) o lenguaje de etiquetas de hipertexto, el protocolo **HTTP** y el sistema de localización de objetos en la web **URL** *Uniform Resource Locator*.

3. ¿Qué significa URL?

   **Uniform Resource Locator** es la dirección específica que se asigna a cada uno de los recursos disponibles en la red con la finalidad de que estos puedan ser localizados o identificados.

4. ¿Cómo se construye una URL? (podrías usar un esquema con los diferentes componentes de una URL)

   -El protocolo (por ejemplo, HTTP o HTTPS) 

   -El servidor o anfitrión con que se establece la comunicación

   -El puerto de red en el servidor para conectarse.

   -La ruta al recurso o archivo que al que se está procurando acceder en el servidor.

5. ¿Qué es un Uniform Resource Identifier (URI)?

   **Uniform Resource Identifier** 

   -Esquema: nombre que se refiere a una especificación para asignar los identificadores, e.g. `urn:`, `tag:`, `cid:`. En algunos casos también identifica el protocolo de acceso al recurso, por ejemplo `http:`, `mailto:`, `ftp:`, etc.

   -Autoridad: elemento jerárquico que identifica la autoridad de nombres (por ejemplo `//www.example.com`).

   -Ruta: Información usualmente organizada en forma jerárquica, que identifica al recurso en el ámbito del esquema URI y la autoridad de nombres (e.g. `/domains/example`).

   -Consulta: Información con estructura no jerárquica (usualmente pares "clave=valor") que identifica al recurso en el ámbito del esquema URI y la autoridad de nombres. El comienzo de este componente se indica mediante el carácter '?'.

   -Fragmento: Permite identificar una parte del recurso principal, o vista de una representación del mismo. El comienzo de este componente se indica mediante el carácter '#'.

   Un URI se diferencia de un URL en que permite incluir en la dirección una subdirección, determinada por el “fragmento”.



![Diagrama de la sintaxis genérica de una URI](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/URI_syntax_diagram_es.svg/1068px-URI_syntax_diagram_es.svg.png)





5. Enlista y describe los métodos HTTP

   ```
   GET
   ```

   El método `GET`  solicita una representación de un recurso específico. Las peticiones que usan el método `GET` sólo deben recuperar datos.

   ```
   HEAD
   ```

   El método `HEAD` pide una respuesta idéntica a la de una petición GET, pero sin el cuerpo de la respuesta.

   ```
   POST
   ```

   El método `POST` se utiliza para enviar una entidad a un recurso en específico, causando a menudo un cambio en el estado o efectos secundarios en el servidor.

   ```
   PUT
   ```

   El modo `PUT` reemplaza todas las representaciones actuales del recurso de destino con la carga útil de la petición.

   ```
   DELETE
   ```

   El método `DELETE` borra un recurso en específico.

   ```
   CONNECT
   ```

   El método `CONNECT` establece un túnel hacia el servidor identificado por el recurso.

   ```
   OPTIONS
   ```

   El método `OPTIONS` es utilizado para describir las opciones de comunicación para el recurso de destino.

   ```
   TRACE
   ```

   El método `TRACE`  realiza una prueba de bucle de retorno de mensaje a lo largo de la ruta al recurso de destino.

   ```
   PATCH
   ```

   El método `PATCH`  es utilizado para aplicar modificaciones parciales a un recurso.

6. Enlista y describe los códigos de status (o de respuesta)

   Los códigos de estado de respuesta HTTP indican si se ha completado satisfactoriamente una solicitud HTTP específica. Las respuestas se agrupan en cinco clases: respuestas informativas, respuestas satisfactorias, redirecciones, errores de los clientes y errores de los servidores.

7. ¿Qué es una query?

   Es la serie de términos reales que se usan a la hora de ir en busca de información en un buscador

8. ¿Para que nos sirve emplear un header HTTP?

   Los headers permiten pasar información adicional a través de la respuesta del servidor

9. ¿Qué es una API?

   Application Programming Interface, es un conjunto de funciones y procedimientos que cumplen una o muchas funciones para ser utilizadas por otro *software*.

10. ¿Qué es un JSON?

    JavaScript Object Notation es un formato de texto sencillo para el intercambio de datos.

11. ¿Qué es un endpoint (server endpoints)?
