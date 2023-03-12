//
//  TIcket.swift
//  Registrar
//
//  Created by Alexey Manokhin on 11.03.2023.
//

import Foundation

class Ticket {
    var address: String
    let status: String
    let ticketСreated = false
    var members: [Member]
    var photos: [Photo]
    
    init(
        address: String,
        status: String,
        members: [Member],
        photo: [Photo]
    )
    {
        self.address = address
        self.status = status
        self.members = members
        self.photos = photo
    }
}
