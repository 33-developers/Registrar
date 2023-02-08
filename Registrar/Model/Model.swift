//
//  Model.swift
//  Registrar
//
//  Created by Максим Гурков on 31.01.2023.
//
import UIKit

class Person {
    
    let login: String
    let password: String
    var tickets: [Ticket]
    
    init(login: String, password: String, tickets: [Ticket]) {
        self.login = login
        self.password = password
        self.tickets = tickets
    }
    
    static func newPerson() -> Person {
        DataManager.shared.person
    }
    
}

class Ticket {
    let address: String
    let status: String
    let ticketСreated = false
    var members: [Member]
    
    init(address: String, status: String, members: [Member]) {
        self.address = address
        self.status = status
        self.members = members
    }
}

class Member {
    let fullName: String
    let nameCar: String
    let modelCar: String
    let gosNumber: String
    let companyName: String
    let serialDocument: String
    let numberDocument: String
    
    init(
        fullName: String, nameCar: String, modelCar: String, gosNumber: String, companyName: String, serialDocument: String, numberDocument: String) {
        self.fullName = fullName
        self.nameCar = nameCar
        self.modelCar = modelCar
        self.gosNumber = gosNumber
        self.companyName = companyName
        self.serialDocument = serialDocument
        self.numberDocument = numberDocument
    }
}


struct Photo {
    let number: Int
    let imageName: String
}

struct Source {
    
    static func allPhotos() -> [Photo] {
        [
            .init(number: 1, imageName: "joker"),
            .init(number: 2, imageName: "background"),
            .init(number: 3, imageName: "batman"),
            .init(number: 4, imageName: "doctor-strange"),
            .init(number: 5, imageName: "iron-man"),
            .init(number: 6, imageName: "jinx"),
            .init(number: 7, imageName: "moon-knight"),
            .init(number: 8, imageName: "sunset"),
            .init(number: 9, imageName: "superman"),
            .init(number: 10, imageName: "venom"),
        ]
    }
    
    static func randomPhotos(with count: Int) -> [Photo] {
        return (0..<count).map { _ in allPhotos().randomElement()! }
    }
}

final class Developer {
    let fullName: String
    let role: String
    let photo: UIImage
    
    init(fullName: String, role: String, photo: UIImage) {
        self.fullName = fullName
        self.role = role
        self.photo = photo
    }
    
    static func getMembers() -> [Developer] {
        DataManager.shared.developers
    }
    
}
