import Foundation

//Handling missing data
var age: Int? = nil
age = 38

//Unwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
//Force unwrapping
let str = "5"

let num = Int(str)!

//Implicitly unwrapped optionals
let age2: Int! = nil

//Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"
//Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

