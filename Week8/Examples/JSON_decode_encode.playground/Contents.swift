import UIKit

let json = """
{
    "car_maker":"Dodge",
    "car_model":"Intrepid",
    "car_model_year":2000,

}
""".data(using: .utf8)!

//print(json as? NSData)

//GET -> decodificar la información
//POST -> codificar la información

//CODABLE

//struct Car: Decodable, Encodable {
//    var maker: String
//    var model: String
//    var year: Int
//    enum CodingKeys: String, CodingKey {
//        case maker = "car_maker"
//        case model = "car_model"
//        case year = "car_model_year"
//    }
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.maker = try container.decode(String.self, forKey: .maker)
//        self.model = try container.decode(String.self, forKey: .model)
//        self.year = try container.decode(Int.self, forKey: .year)
//    }
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.maker, forKey: .maker)
//        try container.encode(self.model, forKey: .model)
//        try container.encode(self.year, forKey: .year)
//    }
//}

//A partir de Swift 4.0 -> Codable
struct Car: Codable {
    //lowerCamelCase
    var carMaker: String
    var carModel: String
    var carModelYear: Int
}

let moreCarsJSON = """
    {
        "cars":[
            {"car_maker":"Dodge","car_model":"Intrepid","car_model_year":2000},
            {"car_maker":"BMW","car_model":"M6","car_model_year":2009},
            {"car_maker":"Acura","car_model":"RSX","car_model_year":2004},
                {"car_maker":"Land Rover","car_model":"LR2","car_model_year":2010},
                {"car_maker":"Lincoln","car_model":"Town Car","car_model_year":1999}
        ]
    }
""".data(using: .utf8)!

struct CarFleet: Codable {
    let cars: [Car]
}


let jsonDecoder = JSONDecoder()
jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
let car = try! jsonDecoder.decode(Car.self, from: json)
print(car)
print(car.carMaker)
print(car.carModel)
print(car.carModelYear)

let jsonEncoder = JSONEncoder()
let reencondedJSON = try! jsonEncoder.encode(car)

print(String(data: reencondedJSON, encoding: .utf8)!)
print()

let decoder = JSONDecoder()
decoder.keyDecodingStrategy = .convertFromSnakeCase
//let carFleet = try! decoder.decode(CarFleet.self, from: moreCarsJSON)
//for c in carFleet.cars {
//    print(c.carModel)
//}

do {
    let carFleet = try decoder.decode(CarFleet.self, from: moreCarsJSON)
    for c in carFleet.cars {
        print(c.carModel)
    }
} catch {
    print("Error decoding JSON")
}


