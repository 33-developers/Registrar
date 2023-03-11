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
    
    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        photoOne.layer.cornerRadius = photoOne.frame.width / 2
//        photoTwo.layer.cornerRadius = photoTwo.frame.width / 2
//    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func getSet(photo: String, value: Int) {
        if value % 2 == 0 {
            photoOne.image = UIImage(named: photo)
        } else {
            photoTwo.image = UIImage(named: photo)
        }
    }
}
