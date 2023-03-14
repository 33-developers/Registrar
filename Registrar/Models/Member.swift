//
//  User.swift
//  Registrar
// 
//  Created by Alexey Manokhin on 11.03.2023.
//

import Foundation

final class Member {
    var fullName: String
    var nameCar: String
    var modelCar: String
    var gosNumber: String
    var companyName: String
    var serialDocument: String
    var numberDocument: String
    
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
