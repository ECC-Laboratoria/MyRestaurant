import UIKit

// Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()


// Accepting parameters in a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")


// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I´m going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


// Closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


// Trailing closure syntax

travel {
    print("I'm driving in my car")
}

// Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// Using closures as parameters when they return values

func travelOther(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Podemos llamar travelOther() usando algo asi:
travelOther { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names

// Swift sabe que el parámetro para ese cierre debe ser un string, por lo que podemos eliminarlo
travelOther{ place -> String in
    return "I'm going to \(place) in my car"
}

// También sabe que el cierre debe devolver un string, por lo que podemos eliminarlo.
travelOther{ place in
    return "I'm going to \(place) in my car"
}

// Como el cierre solo tiene una línea de código que debe ser la que devuelve el valor, Swift también nos permite eliminar la palabra clave return.
travel { place in
    "I'm going to \(place) in my car"
}

// En liugar de escribir lace in, podemos dejar que Swift proporcione nombres automáticos para los parametros de cierre ($0).
travelOther {
    "I'm going to \($0) in my car"
}


// Closures with multiple parameters

func travelOther2(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelOther2 {
    "I'm going to \($0) at \($1) miles per hour."
}


// Returning closures from functions

func travelOther3() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelOther3()
result("London")

let result2 = travelOther3()("London")


// Capturing values

func travelCount() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = travelCount()
result("London")

