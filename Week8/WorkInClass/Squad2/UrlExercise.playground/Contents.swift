import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let url = URL(string: "https://itunes.apple.com/search")!
let querie : [String:String] = ["term":"pink+floyd","entity":"album", "limit":"5"]

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

let specificURL = url.withQueries(querie)!

let task = URLSession.shared.dataTask(with: specificURL) { (data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()
