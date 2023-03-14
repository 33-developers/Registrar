//
//  DevelopersTableViewCell.swift
//  Registrar
// 
//  Created by Alexey Manokhin on 08.02.2023.
//

import UIKit

class DevelopersTableViewCell: UITableViewCell {
    @IBOutlet var photo: UIImageView!
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var roleLabel: UILabel!
    
    func getSet(member: Developer) {
        self.fullNameLabel.text = member.fullName
        self.roleLabel.text = member.role
        self.photo.image = member.photo
    }
}
