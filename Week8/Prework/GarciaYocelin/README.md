# Prework Week 8

### Preguntas de Prework

### Teoría:

1. Haz un breve resumen sobre el protocolo HTTP y HTTPS. 

   Hyper Text Transfer Protocol (HTTP) : Permite la comunicación entre diferentes sistemas, comúnmente es usado para transferencia de datos entre un servidor web y el navegador. 

   Hyper Text Transfer Protocol  Secure (HTTPS): Protocolo más seguro que evita el robo de información entre los servidores y los navegadores, haciendo uso de una capa de certificación (**SSL (secure sockets layer) certificate**) quien se encarga de encriptar la información que se transfiere gracias a que crea una conexión segura y encriptada. 

   Diferencias:

   - HTTPS es más seguro que HTTP ya que usa protocolos de encriptación y certificación al momento de la transferencia de datos

   - HTTP usa el puerto de comunicación 80 por defecto en tanto que HTTPS usa el 443

   - HTTP trabaja en la capa de Aplicación, en tanto que HTTPS lo hace en la capa de transporte.

   - HTTP no usa ni encriptación ni certificados, en tanto que HTTPS encripta y usa certificados SSL

   - HTTPS tiene preferencia para las búsquedas dentro de las características SEO

     

2. ¿Quién is Tim Berners Lee?

   Ingeniero físico considerado el padre de la web. Él junto con su equipo crearon el Lenguaje de Etiquetas de Hipertexto (HTML - HyperText Markup Language), el protocolo HTTP, así como el sistema de localización de objetos de la web (URL - Uniform Resource Locator).

   Propuso el proyecto World Wide Web, gracias al cual fue posible que las persona trabajaran juntas en una web de documentos de hipertexto. 

3. ¿Qué significa URL? (URL es un acrónimo)

   Uniform Resource Locators (URLs). Representan direcciones de recursos de la Web, estos recursos pueden ser páginas HTML, documentos de CSS, imágenes, etc. 

4. ¿Cómo se construye una URL? (podrías usar un esquema con los diferentes componentes de una URL)

   Partes de una URL

   - Protocolo: Indica que protocolo usa el navegador(métodos para la transferencia de datos entre redes de computadoras):
     - HTTP
     - HTTPS
     - MAILTO (para abrir clientes de correo)
     - FTP (Para manejo de transferencias)
   - Nombre de dominio: indica que servidor web esta siendo solicitado
   - Puerto: Indica el punto de acceso a los recursos web, suele omitirse con el uso de protocolos HTTP
   - Ruta a lo recursos: Indica la ubicación de los recursos dentro del servidor web o el camino de navegación durante el flujo de las consultas
   - Parámetros: Lista de pares key/value separados por el símbolo _&_ , son usados para devolver recursos específicos.
   - Bookamarks: representadas por el símbolo _#_ son anclas/ligar a otras partes de los recursos. 

5. ¿Qué es un Uniform Resource Identifier (URI) ?

   Identificadores de recursos,  puede ser una URL o un URN o ambos.   

6. Enlista y describe los métodos HTTP.

   - GET: Se usa para hacer consultas de información
   - HEAD: Pide una respuesta, pero sin el cuerpo de la respuesta
   - POST: Se usa para hacer peticiones que me permitan enviar información y efectuar una tarea con dicha información
   - PATCH: Se usa para actualizar la información que ya existe, al igual que POST me permite enviar información que será procesada durante la petición
   - DELTE: sirve para realizar acciones de eliminación de información
   - PUT: reemplaza todas las representaciones de un recurso destino con la carga de la petición.
   - CONNECT: Establece un túnel de conexión con el servidor al que se hacen las peticiones.
   - OPTIONS: El método  es utilizado para describir las opciones de comunicación para el recurso de destino.
   - TRACE: El método  realiza una prueba de bucle de retorno de mensaje a lo largo de la ruta al recurso de destino.

7. Enlista y describe los códigos de status (o de respuesta). 
   - 201: Creado de manera correcta
   - 200: Consulta o tarea ejecutada de forma correcta
   - 204: No hay contenido para la consulta, pero no hubo errores
   - 409: La información que se ha enviado ya se encuentra guardada en el servicio y no se puede duplicar o bien ocasiona un conflicto con el estado actual del servidor
   - 422: Error de procesamiento, no es posible efectuar la tarea por una regla interna del servicio
   - 400: Error de los datos con los que se envió la petición 
   - 401: No se tiene autorización para realizar la solicitud
   - 500: Error interno de la app 
   - 404: No se encontró el recurso buscado

8. ¿Qué es una query?

   Términos de búsquedas web, caen en tres categorías Información (saber), Navegación(ir) y Transacción (hacer)

9. ¿Para que nos sirve emplear un header HTTP?

   Las cabeceras (en inglés *headers*) HTTP permiten al cliente y al servidor enviar información adicional junto a una petición o respuesta. Una cabecera de petición esta compuesta por su nombre (no sensible a las mayúsculas) seguido de dos puntos '`:`', y a continuación su valor (sin saltos de línea). Los espacios en blanco a la izquierda del valor son ignorados.

   - Cabecera general: Cabeceras que se aplican tanto a las peticiones como a las respuestas, pero sin relación con los datos que finalmente se transmiten en el cuerpo.
   - Cabecera de consulta: Cabeceras que contienen más información sobre el contenido que va a obtenerse o sobre el cliente.
   - Cabecera de respuesta: Cabeceras que contienen más información sobre el contenido, como su origen o el servidor (nombre, versión, etc.).
   - Cabecera de entidad: Cabeceras que contienen más información sobre el cuerpo de la entidad

10. ¿Qué es una API?

    Application Programming Interface, es una aplicación para comunicar un servicio con otro. Es el  punto de acceso de una app para que pueda acceder a una base de datos.

11. ¿Qué es JSON?

    Javascript Object Notation, es una forma de representar información para que luzcan como objetos de Javascript, es decir,como pares de clave valor

12. ¿Qué es un endpoint (server endpoints)?

    Es un punto de acceso para comunicar a un servició con otros que  quieren hacer uso de él.  Es un punto final, un canal de comunicación. Cuando una API interactúa con otro sistema, los puntos de contacto de esta comunicación se consideran puntos finales. Para las API, un punto final puede incluir una URL de un servidor o servicio. Cada punto final es la ubicación desde la cual las API pueden acceder a los recursos que necesitan para llevar a cabo su función.

### Swift: 

1. Realiza todos los ejemplos de [opcionales](https://www.hackingwithswift.com/sixty/10/1/handling-missing-data).

```swift
/* OPTIONALS
Manejo de perdida de información
Se usan para dar una respuesta cuando lo que se solicita 
no tiene valor
*/
var age: Int? = nil
age = 38
print(age)

/*
Deselvonviendo opcionales
Cuando una variable esta vacía en memoria, su valor en nil,
por lo que apesar de que este definido para tener cierto tipo de dato, no podrá acceder 
a los métodos definidos para él
El proceso de unwrapping,  es aquel que permite manejar estos casos para 
prevenir que el proceso se inseguro.
Uno de los métodos usados, es el uso de if let, en el que se crea la variable 
si existe, en caso contrario fallará
*/
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
/*
La variable name será un string, si se cumple la condición de existencia, entrará 
dentro del unwrapped como un string regular, y podrá usar todas las propiedades de string
en caso contrario correrá el código del else 
*/
/*
Unwrapping con guarda
Otra alternativa, es el uso de guard let, el cual manejar las variables como opcionales
y si encuentra nil, saldra de la función, ciclo o condición que lo use
Con guard let, la variable sige siendo usable fuera de la condición
*/
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
greet("Yocelin")
greet(nil)

/*
Unwrapping forzado
Cuando un valor puede o no existir, es util usar el unwrapping, cuando esto sucede y el valor que tomará la variable tendrá
un valor especifíco, es recomendable usar el unwrapping forzado. 
*/
let str = "5"
let num = Int(str)
// Escribiendo ! después de Int(str) aseguramos que siembre se haga la asignación si el valor de str es casteable //// como Int
let num2 = Int(str)!
/* Es necesario aclarar que si no es casteable, la app romperá, por lo que solo es recomendable usar este caso cuando se este seguro
que siempre se cumplirá la condición*/

/*
OPCIONALES IMPLICITOS CON UNWRAPPING
Este tipo de opcionales, pueden tener un valor o pueden ser nil, pero no necesitan ser desenvueltas para poder usarse, se crean al agregar 
un signo de ! después del tipo de dato y se les asigna el valor nil, dado esto, se comportan como si estuvieran desenvueltos sin necesidad de 
usar if let o guard let, pero si no tienen un valor, el código fallará*/


let age2: Int! = nil

/*
NIL COALESCING
Son de ayuda para proporcionar un retorno a un valor con base en una comparación, deberá asignarse un valor por defecto
*/

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
// Funcionalidad correcta
let user = username(for: 15) ?? "Anonymous"
print(user)
/*
Encadenamiento opcional
Cuando se hace una operación sobre varias variables, y alguna es opcional, es necesario añadirle el signo de ? para que si no 
existe, se ignore el resto de la linea y regrese nil, en caso contrario, se hara unwrapping y continuará el proceso
*/
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
print(beatle)
let names2 = [nil, "Paul", "George", "Ringo"]
// NO corre: let beatle2 = names2.first?.uppercased()
// print(beatle2)

/*
Try opcional
*/
// Correr try catch
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
/*
Existen otras opciones ante el uso de do, try -> catch, una de ellas usa unwrapping y es el uso de try?, que hace uso de funciones que 
retornan un opcional, si la función resulta en un error, regresa nil como resultado, en caso contrario, regresa el valor opcional
*/
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
if let result2 = try? checkPassword("password2") {
    print("Result was \(result2)")
} else {
    print("D'oh.")
}
/*
Otra alternativa, el el uso de try!, que solo se usará cuando se sabe que la funcion resultará de forma positiva
*/
try! checkPassword("sekrit")
print("OK!")

/*
INICIALIZADORES QUE FALLAN  
Es posible hacer uso de opcionales para las funciones init de clases y estructuraas, donde en caso de fallar, inicializará las propiedades
como nil y en caso de existo, asignará un valor
*/
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
let abril =  Person(id: "123456789")
print(abril == nil) // Es falso, por que el id tiene la longitud adecuada
let abril2 =  Person(id: "1234")
print(abril2 == nil) // Es true por que la longitud es menor

/*Typecasiting
Hace Un retorno opcional dependiendo del tipo de si el tipo 
de dato por el que se pregunta, cumple la condiciòn
En el ejemplo, se tiene un arreglo de mascotas que contiene 
intancias de una clase (algunas son derivadas de la calse
original, y otras son derivadas de una clase hija) 
Este arreglo serà de clase Animals (por inferencia de tipo)
y se hecharà mano del typecasting para saber en cual de 
esos conceptos, se puede invocar el método makeNoise()
*/
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

// -----
```



2.  Realiza todos los ejemplos de [closures](https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures).

```swift
// CLOSURES
// Funciones que pasan como parametros a otras funciones
let driving = {
    print("I'm driving in my car")
}
driving()
// usan {} para pasar los parametros y no usan etiquetas
//para el llamdo de las funciones
let drivingParam = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingParam("London")
// retorna valores
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)
// closures con parametros
// Se envian como tipo funcion y retorna culquier cosa
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)
//trailing closure syntax
travel() {
    print("I'm driving in my car trailing")
}
travel {
    print("I'm driving in my car again")
}
// closures con parametros dentro de otra funcion
func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}
func travelReturn(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelReturn { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
// omitir params
travelReturn { place -> String in
    return "I'm going to \(place) in my car"
}
// omite retorno
travelReturn { place in
    return "I'm going to \(place) in my car"
}
// omite return si eslcodigo en una linea
travelReturn { place in
    "I'm going to \(place) in my car"
}
// cambia place in por $posición
travelReturn {
    "I'm going to \($0) in my car"
}
// multiples params
func travelMultParam(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travelMultParam {
    "I'm going to \($0) at \($1) miles per hour."
}
func travelClosure() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travelClosure()
result("London")
let result2 = travelClosure()("London")
// captura valores
func travelCap() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let resultCap = travelCap()
resultCap("London")
resultCap("London")
resultCap("London")
resultCap("London")
```

