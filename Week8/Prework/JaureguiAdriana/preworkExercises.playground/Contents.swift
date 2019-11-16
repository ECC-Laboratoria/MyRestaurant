import UIKit

let drive = {
    print("I drive my car")
}

drive()

let driver = { (side: String) in
    print("I´m going to \(side) in my car")
}
driver("Japan")

let DrwithReturn = { (side: String) -> String in
    return "I´m going to \(side) in my car"
}
let mess = DrwithReturn("home")
print(mess)

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel( action: drive )
travel {
    print("I'm driving in my car")
}

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travelOther(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelOther { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travelOther{ place -> String in
    return "I'm going to \(place) in my car"
}
travelOther{ place in
    return "I'm going to \(place) in my car"
}
travelOther {
    "I'm going to \($0) in my car"
}

func travelDob(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travelDob {
    "I'm going to \($0) at \($1) miles per hour."
}
func travelSimp() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travelSimp()
result("London")

let result2 = travelSimp()("London")


func travelCount() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result3 = travelCount()
result("London")
