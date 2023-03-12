//
//  PhotoTableViewCell.swift
//  Registrar
//
//  Created by Айдар Оспанов on 11.03.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    
    @IBOutlet var firstPhotoButton: UIButton! {
        didSet {
            firstPhotoButton.layer.cornerRadius = 10
            firstPhotoButton.contentMode = .scaleAspectFill
            firstPhotoButton.clipsToBounds = true
        }
    }
    
    @IBOutlet var secondPhotoButton: UIButton! {
        didSet {
            secondPhotoButton.layer.cornerRadius = 10
            secondPhotoButton.contentMode = .scaleAspectFill
            secondPhotoButton.clipsToBounds = true
        }
    }
    
    @IBOutlet var photoOne: UIImageView! {
        didSet {
            photoOne.layer.cornerRadius = 10
            photoOne.contentMode = .scaleAspectFill
        }
    }
    
    @IBOutlet var photoTwo: UIImageView! {
        didSet {
            photoTwo.layer.cornerRadius = 10
            photoTwo.contentMode = .scaleAspectFill
        }
    }
}
