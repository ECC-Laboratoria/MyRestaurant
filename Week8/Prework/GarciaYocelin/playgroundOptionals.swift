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