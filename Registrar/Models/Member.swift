//
//  User.swift
//  Registrar
//
//  Created by Alexey Manokhin on 11.03.2023.
//

import Foundation

class Member {
    let fullName: String
    let nameCar: String
    let modelCar: String
    let gosNumber: String
    let companyName: String
    let serialDocument: String
    let numberDocument: String
    
    init(
        fullName: String,
        nameCar: String,
        modelCar: String,
        gosNumber: String,
        companyName: String,
        serialDocument: String,
        numberDocument: String) {
            
            self.fullName = fullName
            self.nameCar = nameCar
            self.modelCar = modelCar
            self.gosNumber = gosNumber
            self.companyName = companyName
            self.serialDocument = serialDocument
            self.numberDocument = numberDocument
        }
}
