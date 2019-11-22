import UIKit

struct Photo: Codable {
    var copyright: String
    var date: String
    var explanation: String
    var hdurl: String
    var mediaType: String
    var serviceVersion: String
    var title: String
    var url: String
}

let url = URL(string: "https://api.nasa.gov/planetary/apod")!

extension URL {
    func withQueries(_ queries: [String:String] ) -> URL? {
        var components = URLComponents(url:self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

var query: [String:String] = [
    "api_key":"YlhOCp492XP1ajuEqdxwdGshZ15Q7wKlUvnUyxDH",
]

let specificURL = url.withQueries(query)!

let task = URLSession.shared.dataTask(with: specificURL) { (data, response, error) in
    if let data = data {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy
            = .convertFromSnakeCase
        let photo = try! jsonDecoder.decode(Photo.self, from: data)
        
        print(photo.explanation)
    }
}
task.resume()
