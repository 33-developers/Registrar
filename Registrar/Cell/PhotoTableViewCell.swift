//
//  PhotoTableViewCell.swift
//  Registrar
//
//  Created by Айдар Оспанов on 11.03.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    
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
