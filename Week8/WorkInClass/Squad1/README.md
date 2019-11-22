Analhi Guadarrama
Yocelin Garcia 
Elizabeth Ramirez


Ejercicio API 1

```swift
import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
var query: [String:String] = [
    "term": "movie",
    "country":"ca",
    "limit": "20",
    "lang": "fr_fr"
]
let url = URL(string: "https://itunes.apple.com/search")!
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
    if let data = data, let itunesResult = String(data: data, encoding: .utf8) {
        print(itunesResult)
    }
}
task.resume()
```
Ejemplo data nasa
``` swift
import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
var query: [String:String] = [
"date": "2019-11-16",
"api_key": "DEMO_KEY"
]
let url = URL(string: "https://api.nasa.gov/planetary/apod")!
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
if let data = data, let itunesResult = String(data: data, encoding: .utf8) {
print(itunesResult)
let jsonDecoder = JSONDecoder()
jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
let img = try! jsonDecoder.decode(NasaImg.self, from: data)
print(img.explanation)
}
}
task.resume()


struct NasaImg: Codable {
var copyright: String
var date: String
var explanation: String
var hdurl: String
var mediaType : String
var serviceVersion: String
var title: String
var url: String
}
```



