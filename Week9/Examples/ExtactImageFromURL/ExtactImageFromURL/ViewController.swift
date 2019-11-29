//
//  ViewController.swift
//  ExtactImageFromURL
//
//  Created by Néstor I. Martínez Ostoa on 23/11/19.
//  Copyright © 2019 Néstor I. Martínez Ostoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoInfoImageView: UIImageView!
    @IBOutlet weak var explanationTextView: UITextView!
    let photoInfoController = PhotoInfoNetworkController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        explanationTextView.text = ""
        photoInfoController.fetchPhotoInfo { (photoInfo) in
            guard let photoInfo = photoInfo else {return}
            self.updateUI(with: photoInfo)
        }
    }
    func updateUI(with photoInfo: PhotoInfo) {
        let url = photoInfo.url
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                //Grand Central Dispatch
                DispatchQueue.main.async {
                    self.navigationItem.title = photoInfo.title
                    self.explanationTextView.text = photoInfo.explanation
                    self.photoInfoImageView.image = UIImage(data: data)
                }
            }
        }
        task.resume()
    }
}
