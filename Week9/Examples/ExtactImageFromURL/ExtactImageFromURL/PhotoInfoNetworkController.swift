//
//  PhotoInfoNetworkController.swift
//  ExtactImageFromURL
//
//  Created by Néstor I. Martínez Ostoa on 23/11/19.
//  Copyright © 2019 Néstor I. Martínez Ostoa. All rights reserved.
//

import Foundation

struct PhotoInfoNetworkController {
    func fetchPhotoInfo(completionHandler: @escaping (PhotoInfo?) -> Void) {
        let baseUrl = URL(string: "https://api.nasa.gov/planetary/apod")!
        let query: [String:String] = [
            "api_key":"DEMO_KEY"
        ]
        let url = baseUrl.withQueries(query)!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            if let data = data {
                if let photoInfo = try? decoder.decode(PhotoInfo.self, from: data){
                    completionHandler(photoInfo)
                }else {
                    print("JSON Error")
                }
            } else {
                print(error?.localizedDescription ?? "JSON Error")
            }
        }
        task.resume()
    }
}
