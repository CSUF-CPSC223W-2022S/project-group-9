//
//  mapViewController.swift
//  TuffyFood
//
//  Created by csuftitan on 5/10/22.
//

import UIKit

class mapViewController: UIViewController {

    @IBOutlet weak var mapImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mapImage.loadImg(URLAddress: "https://www.fullerton.edu/food/_resources/pdfs/Campus%20Dining%20Map%202019.pdf" )
        // Do any additional setup after loading the view.
    }
}

extension UIImageView {
    func loadImg(URLAddress: String) {
        guard let url = URL(string: URLAddress) else {
            return
        }
        URLSession.shared.dataTask(with: url) {(data,ressponse,error) in
            if error != nil {
                print("Failed loading image")
                return
            }
            guard let response = ressponse as? HTTPURLResponse, response.statusCode == 200 else {
                print("Error http response")
                return
            }
            
            //Fetch the main thread
            DispatchQueue.main.async { [weak self] in
                if let imageData = try? Data(contentsOf: url) {
                    if let loadedImage = UIImage(data: imageData) {
                            self?.image = loadedImage
                    }
                }
            }
        }.resume()
    }
}
