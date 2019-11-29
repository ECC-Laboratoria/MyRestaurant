# Prework Week 8

**Fecha de entrega:** 15 Nov. 2019 a las 23:59 hrs mediante un **pull request**
---



### Teoría: 

1. Haz un breve resumen sobre el protocolo HTTP y HTTPS. 

**HTTP**  

- HTTP significa **Hypertext Transfer Protocol**. Es un protocolo que fue diseñado a principios de 1990 y nos permite realizar peticiones de datos y recursos (como HTML) a los servidores web. Su estructura es de cliente-servidor, es decir que una petición de datos es iniciada por el elemento que recibirá los datos (el cliente), normalmente un navegador web. Despúes de que se realiza la petición la conexión enre el cliente y el servidor  a través del internet es desconectada. 
Se trata de un protocolo “sin estado”, vale decir, que no lleva registro de visitas anteriores sino que siempre empieza de nuevo. La información relativa a visitas previas se almacena en estos sistemas en las llamadas “cookies”, almacenadas en el sistema cliente.
Este protocolo establece las pautas a seguir, los métodos de petición y cuenta con cierta flexibilidad para incorporar nuevaspeticiones y funcionalidades. 

- El servidor brinda una respuesta estructurada a los clientes de modo puntual y dotada de una serie de metadatos, que establecen las pautas para el inicio, desarrollo y cierre de la transmisión de la información. Estos son los “métodos de petición”, es decir, los comandos que disparan la ejecución de recursos determinados, cuyos archivos residen en el servidor.  

**HTTPS**  

- Significa **Hyper TExt Tranfer Protocol Secure**. Se trata de la versión segura del HTTP, es una versión del mismo protocolo que se basa en la creación de un canal cifrado para la transmición de información, lo cual lo hace más apropiado para cieertos datos de tipo sencible(claves, usuarios personales,etc.)  
El protocolo esta protegido contra la intervención de terceros que puedan espiar el intercambio de información


2. ¿Quién is Tim Berners Lee?  
Es un científico de la computación británica, conocido por ser el padre de la World Wide Web. Estableció la primera comunicación entre un cliente y un servidor usando el protocolo HTTP en noviembre de 1989. En octubre de 1994 fundó el Consorcio de la World Wide Web (W3C) con sede en el MIT, para supervisar y estandarizar el desarrollo de las tecnologías sobre las que se fundamenta la Web y que permiten el funcionamiento de Internet.  
Berners-Lee desarrolló las ideas fundamentales que estructuran la web. Él y su grupo crearon lo que por sus siglas en inglés se denomina Lenguaje HTML (HyperText Markup Language) o lenguaje de etiquetas de hipertexto, el protocolo HTTP (HyperText Transfer Protocol) y el sistema de localización de objetos en la web URL (Uniform Resource Locator).

3. ¿Qué signficia URL? (URL es un acrónimo)  
Uniform resource Locator. Localizador de recursos uniforme. La dirección puede apuntar a recursos variables en el tiempo. Están formados por una secuencia de caracteres de acuerdo a un formato modélico y estándar que designa recursos en una red
4. ¿Cómo se construye una URL? (podrías usar un esquema con los diferentes componentes de una URL)  

![url](https:)

5. ¿Qué es un Uniform Resource Identifier (URI) ?  
Es una cadena de caracteres que identifica los recursos de una red de forma unívoca.La diferencia respecto a un localizador de recursos uniforme (URL) es que estos últimos hacen referencia a recursos que, de forma general, pueden variar en el tiempo.  

6. Enlista y describe los métodos HTTP.  
**GET**: se emplea para leer una representación de un resource. En caso de respuesta positiva (200 OK), GET devuelve la representación en un formato concreto: HTML, XML, JSON o imágenes, JavaScript, CSS, etc. En caso de respuesta negativa devuelve 404 (not found) o 400 (bad request).  
  **POST**: Aunque se puedan enviar datos a través del método GET, en muchos casos se utiliza POST por las limitaciones de GET. En caso de respuesta positiva devuelve 201 (created). Los POST requests se envían normalmente con formularios  
  **PUT**:Utilizado normalmente para actualizar contenidos, pero también pueden crearlos. Tampoco muestra ninguna información en la URL. En caso de éxito devuelve 201 (created, en caso de que la acción haya creado un elemento) o 204 (no response, si el servidor no devuelve ningún contenido). A diferencia de POST es idempotente, si se crea o edita un resource con PUT y se hace el mismo request otra vez, el resource todavía está ahí y mantiene el mismo estado que en la primera llamada. Si con una llamada PUT se cambia aunque sea sólo un contador en el resource, la llamada ya no es idempotente, ya que se cambian contenidos.   
**DELETE**:Simplemente elimina un resource identificado en la URI. Si se elimina correctamente devuelve 200 junto con un body response, o 204 sin body. DELETE, al igual que PUT y GET, también es idempotente.
**HEAD**  
Es idéntido a GET, pero el servidor no devuelve el contenido en el HTTP response. Cuando se envía un HEAD request, significa que sólo se está interesado en el código de respuesta y los headers HTTP, no en el propio documento. Con este método el navegador puede comprobar si un documento se ha modificado, por razones de caching. Puede comprobar también directamente si el archivo existe.

Por ejemplo, si tienes muchos enlaces en tu sitio web, puedes enviar un HEAD request a todos los enlaces para comprobar los que estén rotos. Es bastante más rápido que hacerlo con GET  

7. Enlista y describe los códigos de status (o de respuesta).   
- 1xx Respuestas informativas. Ejemplo: 100 Continue- El navegador puede continuar realizando su petición  
- 2xx Peticiones correctas. Ejemplo: 200 OK- Respuesta estándar para peticiones correctas.  
- 3xx: Redirecciones. El cliente tiene que tomar una acción adicional para completar la petición.
ejemplo: 302 Found-Este es el código de redirección más popular, pero también un ejemplo de las prácticas de la industria contradiciendo el estándar
- 4xx: Errores del cliente. Ejemplo: 404 Not Found-
Recurso no encontrado. Se utiliza cuando el servidor web no encuentra la página o recurso solicitado.
- 5xx: Errores de servidor. Ejemplo:502 Bad Gateway-
El servidor está actuando de proxy o gateway y ha recibido una respuesta inválida del otro servidor, por lo que no puede responder adecuadamente a la petición del navegador.

8. ¿Qué es una query?  
Es la parte de un localizador uniforme de recursos (URL) que asigna valores a parámetros específicos. La cadena de consulta comúnmente incluye campos agregados a una URL base por un navegador web u otra aplicación cliente, por ejemplo, como parte de un formulario HTML.
9. ¿Para que nos sirve emplear un header HTTP?  
Para transmitir datos a través de HTTP mediante requests y responses entre navegador y servidor. 
10. ¿Qué es una API?  
Las siglas API provienen del inglés “Application Programming Interface”, que en español sería “Interfaz de Programación de Aplicaciones”. Uno de los principales objetivos de una API consiste en proporcionar un conjunto de funciones y procedimientos que puedan ser usados por otro software, dándoles un uso general
11. ¿Qué es JSON?  
JSON es el acrónimo para JavaScript Object Notation, y aunque su nombre lo diga, no es necesariamente parte de JavaScript, de hecho es un estándar basado en texto plano para el intercambio de información, por lo que se usa en muchos sistemas que requieren mostrar o enviar información para ser interpretada por otros sistemas, la ventaja de JSON al ser un formato que es independiente de cualquier lenguaje de programación, es que los servicios que comparten información por éste método, no necesitan hablar el mismo idioma, es decir, el emisor puede ser Java y el receptor PHP, cada lenguaje tiene su propia librería para codificar y decodificar cadenas de JSON.
JSON puede representar cuatro tipos primitivos(cadenas, números, booleanos, valores nulos) y dos tipos estructurados(objetos y arreglos).
12. ¿Qué es un endpoint (server endpoints)?  
es la URL donde una aplicación cliente puede acceder a su servicio. El mismo servicio web puede tener múltiples puntos finales, por ejemplo, para que esté disponible utilizando diferentes protocolos.

### Swift:

1. Realiza todos los ejemplos de [closures](https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures).   

- CREATING BASIC CLOSURES 

```
//Closure example
let driving = {
    print("I'm driving in my car")
}

//Calling a closure
driving()
```  

- ACCEPTING PARAMETERS

```
//Creating a closure that accepts a place name string 
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

//We don’t use parameter labels when running closures
driving("London")
```  

- RETURNING VALUES  
```
//Creating a closure that accepts a place name string 
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

//We want a closure that returns a string 
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}  

//We can now run that closure and print its return value  

let message = drivingWithReturn("London")
print(message)
``` 

- CLOSURES AS PARAMETERS
```
//Creating a closure 
let driving = {
    print("I'm driving in my car")
}

//Passing a clusure into a function 

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//Calling closure 

travel(action: driving)
``` 

- TRAILING CLOSURE SYNTAX
```
//If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. 

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//Using trailing closure syntax

travel() {
    print("I'm driving in my car")
}

//we can eliminate the parentheses entirely

travel {
    print("I'm driving in my car")
}
``` 

- CLOSURES WITH PARAMETERS

```
//Writing a travel() function that accepts a closure as its only parameter

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

//Using trailing closure syntax

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

``` 

- CLOSURES WITH RETURN VALUES
```
//Writing a travel() function that accepts a closure as its only parameter and that closure in turn accepts a string and returns a string

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Using trailing closure syntax

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
``` 
- SHORTHAND PARAMETER NAMES  

```
//Function that accepts one parameter, which is a closure that itself accepts one parameter and returns a string.

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Calling travell()

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//shorthand syntax 

travel {
    "I'm going to \($0) in my car"
}
```

- CLOSURES WITH MULTIPLE PARAMETERS

```
//Function that require a closure that specifies where someone is traveling to, and the speed they are going.

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

//Calling travell() using a trailing closure and shorthand closure parameter names

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

```
- RETURNING CLOSURES
```
//Creating a closure

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

//Calling travell() 

let result = travel()
result("London")

//It´s possible to call the return value from travel() directly
let result2 = travel()("London")
```

-CAPTURING VALUES  

```
//Creating a closure

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

//Calling travell() 

let result = travel()
result("London")

//Closure capturing happens if we create values in travel() that get used inside the closure

func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

//So, if we call result("London") multiple times, the counter will go up and up

result("London")
result("London")
result("London")
```



2. Realiza todos los ejemplos de [opcionales](https://www.hackingwithswift.com/sixty/10/1/handling-missing-data). 

- HANDLING MISSING DATA


```
//Making a type optional
var age: Int? = nil

//If we later learn that age, we can use it:
age = 38

```

- UNWRAPPING OPTIONALS

```
//Making a type optional
var name: String? = nil

//A common way of unwrapping optionals is with if let syntax

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

```

- UNWRAPPING WITH GUARD

```
//Unwrapped using guard let
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

```

- FORCE UNWRAPPING

```
//if you have a string that contains a number, you can convert it to an Int
let str = "5"
let num = Int(str)  

//you can force unwrap the result by writing !

let num = Int(str)!

```

- IMPLICITLY UNWRAPPED OPTIONALS

```
//Implicitly unwrapped optionals are created by adding an exclamation mark after your type name

let age: Int! = nil 


```

- NIL COALESCING

```
//Here’s a function that accepts an integer as its only parameter and returns an optional string

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

//We can provide a default value of “Anonymous”

let user = username(for: 15) ?? "Anonymous"

```

- OPTIONAL CHANINING

```
let names = ["John", "Paul", "George", "Ringo"]

//The question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.

let beatle = names.first?.uppercased()
```

- OPTIONAL TRY  

```
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}



//Using try? we can run checkPassword()

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


//Using try! we can rewrite the code
try! checkPassword("sekrit")
print("OK!")
```

- FIALABLE INITIALIZERS
```
let names = ["John", "Paul", "George", "Ringo"]

//The question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.

let beatle = names.first?.uppercased()
```

- OPTIONAL TRY  

```
let str = "5"
let num = Int(str)

//If anything other than a nine-letter string is used we’ll return nil, otherwise we’ll continue as normal.

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


```

- TYPECASTIG

```
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
//We can create a couple of fish and a couple of dogs, and put them into an array

let pets = [Fish(), Dog(), Fish(), Dog()]


//WRITING THE LOOP 

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
```
