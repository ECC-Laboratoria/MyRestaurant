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