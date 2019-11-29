import UIKit

//Closures

/*
 
    Bloques de código que puedo pasar como parámetros.
    
*/

//Trailing closure syntax
func performRequest(url: String, response: (_ code: Int) -> String) {
    //haz algo con la información
}
let url = "https://www.apple.com"
performRequest(url: url) { (code) in
    return "\(code)"
}
//Syntactic sugar
performRequest(url: url) {"\($0)"}

//High order functions
//Map: transformar un conjunto de datos
let names = ["Elizabeth", "Yocelin", "América", "Adriana"]
//Elizabeth @ ECC-Laboratoria
//let fullNames = names.map { (name) -> String in
//    return name + " @ ECC-Laboratoria"
//}
let fullNames = names.map {"\($0) @ ECC-Laboratoria"}
print(fullNames)

//Reduce: reducir un conjunto en otro conjunto
var numbers = [1,12,45,145,325,76,80,6]
var sum = numbers.reduce(0, {$0 + $1})
print(sum)

//Filter: filtra con una condición
var filteredNumbers = numbers.filter { (valor) -> Bool in
    return valor < 50
}
print(filteredNumbers.sorted())
