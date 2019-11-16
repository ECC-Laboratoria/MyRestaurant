import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//Working with the Web: URLSession
//let url = URL(string: "https://www.apple.com")!
//url.scheme
//url.host
//
//let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//    if let data = data, let string = String(data: data, encoding: .utf8) {
//        print(string)
//    }
//}
//task.resume()


let url = URL(string: "https://api.nasa.gov/planetary/apod")!

var query: [String:String] = [
    "api_key":"DEMO_KEY"
]

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

let specificURL = url.withQueries(query)!

let task = URLSession.shared.dataTask(with: specificURL) { (data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()




