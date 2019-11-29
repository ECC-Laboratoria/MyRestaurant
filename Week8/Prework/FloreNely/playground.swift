import Foundation

//basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

//parametros
let drivings = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivings("London")

//Return
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//trailing closure syntax
func travels(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travels() {
    print("I'm driving in my car")
}
//closure with parameters
func travelss(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travelss { (place: String) in
    print("I'm going to \(place) in my car")
}
//Using closures as parameters when they return values
func travelsss(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelsss { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Shorthand parameter names
func travel4(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel4 {
    "I'm going to \($0) in my car"
}
//Closures with multiple parameters
func travel5(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel5 {
    "I'm going to \($0) at \($1) miles per hour."
}
//Returning closures from functions
func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result1 = travel6()
result1("London")
let result2 = travel6()("London")
//Capturing values
func travel7() -> (String) -> Void {
     var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result7 = travel7()
result7("London")