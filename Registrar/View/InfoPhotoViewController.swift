//
//  InfoPhotoViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class InfoPhotoViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    
    var passedButtonImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        configurationPhotoImageView()
        
        if let image = passedButtonImage {
            photoImageView.image = image
        }
    }
    
    func configurationPhotoImageView() {
        photoImageView.layer.cornerRadius = 10
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
    }
}
