//
//  Model.swift
//  Registrar
// 
//  Created by Максим Гурков on 31.01.2023.
//
import UIKit

class User {
    
    let login: String
    let password: String
    var tickets: [Ticket]
    
    init(login: String, password: String, tickets: [Ticket]) {
        self.login = login
        self.password = password
        self.tickets = tickets
    }
    
    static func newUser() -> User {
        DataManager.shared.user
    }
}
