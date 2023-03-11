//
//  InfoPhotoViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class InfoPhotoViewController: UIViewController {
    
    @IBOutlet var artImageView: UIImageView!
    
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artImageView.image = UIImage(named: photo.imageName)
    }
}
