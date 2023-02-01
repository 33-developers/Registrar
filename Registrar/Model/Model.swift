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
    var address: String
    var status: String
    var applicationСreated = false
    var members: [Member]
    
    init(address: String, status: String, members: [Member]) {
        self.address = address
        self.status = status
        self.members = members
    }
}

class Member {
    var fullName: String
    var nameCar: String
    var modelCar: String
    var gosNumber: String
    var companyName: String
    var serialDocument: String
    var numberDocument: String
    
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
