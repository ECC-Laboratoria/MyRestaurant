import UIKit

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

struct PhotoInfo: Codable {
    var date: String
    var explanation: String
    var title: String
    var url: URL
}

let url = URL(string: "https://api.nasa.gov/planetary/apod")!
var query: [String:String] = [
    "api_key":"DEMO_KEY"
]
let specificURL = url.withQueries(query)!
let task = URLSession.shared.dataTask(with: specificURL) { (data, response, error) in
    if let data = data{
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        if let photoInfo = try? decoder.decode(PhotoInfo.self, from: data){
            print(photoInfo)
        }else {
            print("JSON Error")
        }
    }
}
task.resume()


//¿Dónde debería ir el código de red (network requests)?

func fetchPhotoInfo(completionHandler: @escaping (PhotoInfo?) -> Void) {
    let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!
    var query: [String:String] = [
        "api_key":"DEMO_KEY"
    ]
    let url = baseURL.withQueries(query)!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        if let data = data {
            if let photoInfo = try? decoder.decode(PhotoInfo.self, from: data) {
                completionHandler(photoInfo)
            }else {
                print("JSON Error")
            }
        }
    }
    task.resume()
}
fetchPhotoInfo { (photoInfo) in
    print(photoInfo)
}
