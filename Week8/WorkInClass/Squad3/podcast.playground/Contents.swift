import UIKit

// Primeros 60 potcast en japones
let url = URL(string: "https://itunes.apple.com/search")!
let query: [String:String] = [
    "term":"podcast",
    "country": "jp",
    "lang": "ja_jp",
    "limit": "60"
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
let task = URLSession.shared.dataTask(with: specificURL)
    {(data, response, error) in
        if let data = data, let string = String(data : data, encoding: .utf8){
        print(string)
    }
}
task.resume()
