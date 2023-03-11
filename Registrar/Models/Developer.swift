//
//  Developer.swift
//  Registrar
//
//  Created by Alexey Manokhin on 11.03.2023.
//

import UIKit

struct Developer {
    let fullName: String
    let role: String
    let photo: UIImage
    
    static func getMembers() -> [Developer] {
        DataManager.shared.developers
    }
    
}
