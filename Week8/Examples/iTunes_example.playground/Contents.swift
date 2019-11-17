import UIKit

let baseURL = URL(string: "https://itunes.apple.com/search")!

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

let query: [String:String] = [
    "term":"movie",
    "country":"CA",
    "limit":"20"
]

let url = baseURL.withQueries(query)!

let _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data, let iTunesResult = String(data: data, encoding: .utf8) {
        print(iTunesResult)
    }
}.resume()
