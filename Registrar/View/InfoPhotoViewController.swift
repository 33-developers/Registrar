//
//  InfoPhotoViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class InfoPhotoViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    
    var photos: [Photo]!
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        photoImageView.image = UIImage(named: photos[index].imageName)
    }
}
