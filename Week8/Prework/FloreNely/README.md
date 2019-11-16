### Teoría:

1. **Haz un breve resumen sobre el protocolo HTTP y HTTPS.**

   - **HTTP**: La sigla proviene del inglés Hyper Text Transport Protocol, es decir, Protocolo de Transferencia de Hipertexto. Básicamente, se trata de un protocolo del tipo petición-respuesta creado con el objetivo de definir y estandarizar las comunicaciones que se llevan a cabo entre los diferentes equipos que forman parte de una red. Para que el sistema exista, hace falta la presencia de un cliente y de un servidor. El cliente hace la petición, por ejemplo, escribir una URL de descarga en el navegador, y el servidor da la respuesta – o sea, empieza la descarga.

   - **HTTPS**: es la versión segura del HTTP, el Protocolo de Transferencia de Hipertexto Seguro (en inglés, Hypertext Transfer Protocol Secure). Tal sistema se basa en la combinación de los protocolos HTTPS y SSL/TS. En suma, se trata de la forma más segura de acceder a la información disponible en Internet. HTTPS transmite los datos de forma segura usando una conexión encriptada. Utiliza una llave pública que permite al receptor desencriptar la información al recibirla. Esta llave existe en un servidor y se incluye en lo que conocemos como certificado SSL.

     ![img](https://www.segurisoft.es/wp-content/uploads/2017/07/http_vs_https.jpg)

     Una de las principales diferencias visibles para el usuario es la velocidad. Ésta suele ser más rápida en HTTP que con una conexión segura. Eso ocurre porque encriptar y desencriptar los datos hace que se consuma más banda, de ahí la bajada de velocidad. Pese a ello, es sin duda la mejor opción para navegar en internet.

     Las principales diferencias son:

     | **HTTP**                               | **HTTPS**                                                    |
     | :------------------------------------- | :----------------------------------------------------------- |
     | La URL empieza con "http://"           | La URL empieza con "https://"                                |
     | No utiliza conexión segura             | Utiliza conexión segura                                      |
     | Envía los datos a través del puerto 80 | Envía los datos a través del puerto 443                      |
     | No requiere validación de dominio      | Requiere mínimo la validación de dominio y, para algunos certificados, incluso se requiere la validación de documentos legales |
     | Funciona a nivel de aplicación         | Funciona a nivel de transporte                               |
     | Sin encriptación                       | Con encriptación                                             |
     | No requiere certificados SSL           | Requiere certificados SSL                                    |

2. **¿Quién es Tim Berners Lee?**

   El padre de las 3 W.- Para presentar a Tim Berners-Lee sólo hacen falta decir tres palabras: World Wide [Web](https://sistemas.com/web.php). Y es que él no es ni más ni menos que el creador de WWW, el [sistema](https://sistemas.com/sistema-informatica.php) que hace posible que conozcamos a [Internet](https://sistemas.com/internet.php) tal cual es hoy en día; además de seguir siendo director del Consorcio World Wide Web (W3C), luego de haber impulsado su creación hacia 1994.

   Este británico que habita en los Estados Unidos, fue quien escribió el primer servidor World Wide Web, el Protocolo de transferencia de [hipertexto](https://sistemas.com/hipertexto.php) (HTTP), concepto fundamental para la difusión masiva de Internet, en 1990.

   Basándose en la idea de la universalidad del lenguaje, así fue como redactó el HTLM (HyperText Markup Language), el lenguaje que permite establecer enlaces con otros documentos en una máquina, y el esquema de direcciones que genera una localización única para cada página, [URL](https://sistemas.com/url.php) (Uniform Resourse Locutor). Asimismo, redactó el HTTP (HyperText Transfer Protocol), que permite la trasferencia de la información en la red.

   En 1991 publicó su proyecto para que comenzara a ser probado por otros y en sólo tres años, para 1994, ya se había difundido a pasos agigantados, pasando de 26 [servidores](https://sistemas.com/9594.php) web en 1992 a 200 en 1995.

3. **¿Qué significa URL? (URL es un acrónimo)**

   URL son las siglas en inglés de *Uniform Resource Locator*, que en español significa **Localizador Uniforme de Recursos**.

   Como tal, el URL **es la dirección específica que se asigna a cada uno de los recursos disponibles en la red** con la finalidad de que estos puedan ser localizados o identificados. Así, hay un URL para cada uno de los recursos (páginas, sitios, documentos, archivos, carpetas) que hay en la *World Wide Web*.

   El URL fue creado por **Tim Berners-Lee** y usado por primera vez en 1991. 

   

4. **¿Cómo se construye una URL? (podrías usar un esquema con los diferentes componentes de una URL)**

   El URL es una dirección simple que combina cuatro elementos de información fundamentales: el protocolo (por ejemplo, HTTP o HTTPS), el servidor o anfitrión con que se establece la comunicación, el puerto de red en el servidor para conectarse y, finalmente, la ruta al recurso o archivo que al que se está procurando acceder en el servidor. Por ejemplo: http://www.direccion.org/ejemplo/item.html.

5. **¿Qué es un Uniform Resource Identifier (URI) ?**

   URI son las siglas en inglés de *Uniform Resource Identifier* (en español identificador uniforme de recursos), que sirve para identificar recursos en Internet, precisamente lo que el nombre indica.

   El URI no se debe confundir con el [URL](https://www.aboutespanol.com/que-es-url-157627) (aunque es muy común que se haga referencia a ellos como la misma cosa), ya que el URI, como lo ilustra la gráfica, es un concepto que incluye al URL. La diferencia fundamental es que los URI identifican y los URL localizan y, como las localizaciones también sirven para identificar, se puede decir que todos los URL son también URI y que, por otro lado, hay URI que no son URL.

6. **Enlista y describe los métodos HTTP.**

   Los métodos más importates de HTTP (especialmente para hacer aplicaciones REST) son **POST**, **GET**, **PUT**, **DELETE** y **HEAD**.

   - **GET**

   El método GET se emplea para leer una representación de un ***resource***. En caso de respuesta positiva (200 OK), GET devuelve la representación en un formato concreto: HTML, XML, JSON o imágenes, JavaScript, CSS, etc. En caso de respuesta negativa devuelve 404 (*not found*) o 400 (*bad request*).

   - **POST**

   Aunque se puedan enviar datos a través del método GET, en muchos casos se utiliza POST por las **limitaciones de GET**. En caso de respuesta positiva devuelve 201 (*created*). Los POST requests se envían normalmente con formularios

   - **PUT**

   Utilizado normalmente para **actualizar contenidos**, pero también pueden **crearlos**. Tampoco muestra ninguna información en la URL. En caso de éxito devuelve 201 (*created*, en caso de que la acción haya creado un elemento) o 204 (*no response*, si el servidor no devuelve ningún contenido). A diferencia de POST es **idempotente**, si se crea o edita un resource con PUT y se hace el mismo request otra vez, el resource todavía está ahí y mantiene el mismo estado que en la primera llamada. Si con una llamada PUT se cambia aunque sea sólo un contador en el resource, la llamada ya no es idempotente, ya que se cambian contenidos

   - **DELETE**

   Simplemente elimina un ***resource*** identificado en la **URI**. Si se elimina correctamente devuelve 200 junto con un *body response*, o 204 sin *body*. DELETE, al igual que PUT y GET, también es **idempotente**.

   - **HEAD**

   Es idéntido a GET, pero el servidor no devuelve el contenido en el **HTTP response**. Cuando se envía un **HEAD request**, significa que sólo se está interesado en el código de respuesta y los **headers HTTP**, no en el propio documento. Con este método el navegador puede comprobar si un documento se ha modificado, por razones de caching. Puede comprobar también directamente si el archivo existe.

7. **Enlista y describe los códigos de status (o de respuesta).**

   | Código de respuesta        | Descripción                                                  |
   | :------------------------- | :----------------------------------------------------------- |
   | 200 OK                     | Solicitud aceptada; la respuesta contiene el resultado. Este es un código de respuesta general a cualquier solicitud. En las solicitudes GET, el recurso o datos solicitados están en el cuerpo de la respuesta. En las solicitudes PUT o DELETE, la solicitud fue satisfactoria y la información acerca del resultado (como los identificadores de recursos nuevo o los cambios en el estado del recurso) se puede encontrar en el cuerpo de la respuesta. |
   | 201 CREATED                | Las operaciones PUT o POST devuelven este código de respuesta e indica que se ha creado un recurso de forma satisfactoria. El cuerpo de la respuesta podría, por ejemplo, contener información acerca de un nuevo recurso o información de validación (por ejemplo, cuándo se actualiza un activo). |
   | 204 NO CONTENT             | Indica que se ha aceptado la solicitud, pero no había datos para devolver. Este respuesta se devuelve cuando se ha procesado la solicitud, pero no se ha devuelto ninguna información adicional acerca de los resultados. |
   | 400 BAD REQUEST            | La solicitud no fue válida. Este código se devuelve cuando el servidor ha intentado procesar la solicitud, pero algún aspecto de la solicitud no es válido; por ejemplo, un recurso formateado de forma incorrecta o un intento de despliegue de un proyecto de sucesos no válido en el tiempo de ejecución de sucesos. La información acerca de la solicitud se proporciona en el cuerpo de la respuesta e incluye un código de error y un mensaje de error. |
   | 401 UNAUTHORIZED           | El servidor de aplicaciones devuelve este código de respuesta cuando está habilitada la seguridad y faltaba la información de autorización en la solicitud. |
   | 403 FORBIDDEN              | Indica que el cliente ha intentado acceder a un recurso al que no tiene acceso. Podría producirse si el usuario que accede al recurso remoto no tiene privilegios suficientes; por ejemplo, con el rol WBERestApiUsers o WBERestApiPrivilegedUsers. Los usuarios que intenten acceder a proyectos de sucesos privados que son propiedad de otros podrían recibir también este error, pero solo si tienen el rol WBERestApiUsers en lugar de WBERestApiPrivilegedUsers. |
   | 404 NOT FOUND              | Indica que el recurso de destino no existe. Esto podría deberse a que el URI no está bien formado o a que se ha suprimido el recurso. |
   | 405 METHOD NOT ALLOWED     | Se produce cuando el recurso de destino no admite el método HTTP solicitado; por ejemplo, el recurso de funciones solo permite operaciones GET. |
   | 406 NOT ACCEPTABLE         | El recurso de destino no admite el formato de datos solicitado en la cabecera de Accept o el parámetro accept. Es decir, el cliente ha solicitado la devolución de los datos en un determinado formato, pero el servidor no puede devolver datos en ese formato. |
   | 409 CONFLICT               | Indica que se ha detectado un cambio conflictivo durante un intento de modificación de un recurso. El cuerpo de la respuesta contiene más información. |
   | 415 UNSUPPORTED MEDIA TYPE | El recurso de destino no admite el formato de datos del cuerpo de la solicitud especificado en la cabecera de Content-Type. |
   | 500 INTERNAL SERVER ERROR  | Se ha producido un error interno en el servidor. Esto podría indicar un problema con la solicitud o un problema en el código del lado del servidor. Se puede encontrar información acerca del error en el cuerpo de respuesta. |

   
     

8. **¿Qué es una query?**

   Una consulta o query de una base de datos, es un lenguaje estándar que permite traer datos de una o más tablas, actualizar contenidos o eliminarlos, de una manera rápida y poderosa; conocido generalmente como lenguaje SQL.

9. **¿Para que nos sirve emplear un header HTTP?**

    Las cabeceras llevan información necesaria para la comunicación y pueden incluir diferentes aspectos como: tipo de navegador que realiza la petición, dirección de la página solicitada, juego de caracteres utilizado, etc.

   son líneas de información útiles para la comunicación entre servidor y navegador y viceversa.

   Dentro de los headers de petición y respuesta se envía información que resulta útil por ejemplo para establecer o identificar cookies, saber si el navegador acepta envío de información comprimida, etc. Esta información es necesaria para la comunicación, aunque parte de ella es opcional.

10. **¿Qué es una API?**

    Una API (siglas de ‘Application Programming Interface’) es **un conjunto de reglas (código) y especificaciones que las aplicaciones pueden seguir para comunicarse entre ellas**: sirviendo de interfaz entre programas diferentes de la misma manera en que la interfaz de usuario facilita la interacción humano-software.

    Las API pueden servir para comunicarse con el sistema operativo (WinAPI), con bases de datos (DBMS) o con protocolos de comunicaciones (Jabber/XMPP). 

    Las API son valiosas, ante todo, porque **permiten hacer uso de funciones ya existentes en otro software (o de la infraestructura ya existente en otras plataformas) para no estar reinventando la rueda constantemente**, reutilizando así código que se sabe que está probado y que funciona correctamente. En el caso de herramientas propietarias (es decir, que no sean de código abierto), son un modo de hacer saber a los programadores de otras aplicaciones cómo incorporar una funcionalidad concreta sin por ello tener que proporcionar información acerca de cómo se realiza internamente el proceso.

11. **¿Qué es JSON?**

    **JSON** (JavaScript Object Notation - Notación de Objetos de JavaScript) es un formato ligero de intercambio de datos. Leerlo y escribirlo es simple para humanos, mientras que para las máquinas es simple interpretarlo y generarlo. Está basado en un subconjunto del [Lenguaje de Programación JavaScript](http://javascript.crockford.com/), [Standard ECMA-262 3rd Edition - Diciembre 1999](http://www.ecma-international.org/publications/files/ecma-st/ECMA-262.pdf). JSON es un formato de texto que es completamente independiente del lenguaje pero utiliza convenciones que son ampliamente conocidos por los programadores de la familia de lenguajes C, incluyendo C, C++, C#, Java, JavaScript, Perl, Python, y muchos otros. Estas propiedades hacen que JSON sea un lenguaje ideal para el intercambio de datos.

    JSON está constituído por dos estructuras:

    - Una colección de pares de nombre/valor. En varios lenguajes esto es conocido como un *objeto*, registro, estructura, diccionario, tabla hash, lista de claves o un arreglo asociativo.
    - Una lista ordenada de valores. En la mayoría de los lenguajes, esto se implementa como arreglos, vectores, listas o sequencias.

    Estas son estructuras universales; virtualmente todos los lenguajes de programación las soportan de una forma u otra. Es razonable que un formato de intercambio de datos que es independiente del lenguaje de programación se base en estas estructuras.

    En JSON, se presentan de estas formas:

    Un *objeto* es un conjunto desordenado de pares nombre/valor. Un objeto comienza con `{`llave de apertura y termine con `}`llave de cierre. Cada nombre es seguido por `:`dos puntos y los pares nombre/valor están separados por `,`coma.

12. **¿Qué es un endpoint (server end**points)?

    En pocas palabras, un endpoint es un extremo de un canal de comunicación. Cuando una API interactúa con otro sistema, los puntos de contacto de esta comunicación se consideran endpoin. Para las API, unendpoin puede incluir una URL de un servidor o servicio. Cada endpoin es la ubicación desde la cual las API pueden acceder a los recursos que necesitan para llevar a cabo su función.

    Las API funcionan con 'solicitudes' y 'respuestas'. Cuando una API solicita información de una aplicación web o servidor web, recibirá una respuesta. El lugar donde las API envían solicitudes y dónde vive el recurso se denomina endpoin.