//
//  Model.swift
//  Registrar
//
//  Created by Максим Гурков on 31.01.2023.
//


class Person {
    
    let login: String
    let password: String
    let ticket: [Ticket]
    
    init(login: String, password: String, ticket: [Ticket]) {
        self.login = login
        self.password = password
        self.ticket = ticket
    }
    
    static func newPerson() -> Person {
        DataManager.shared.person
    }
    
}

class Ticket {
    let address: String
    let status: String
    let ticketСreated = false
    let members: [Member]
    
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
