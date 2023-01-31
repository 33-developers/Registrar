//
//  DataManager.swift
//  Registrar
//
//  Created by Максим Гурков on 31.01.2023.
//

class DataManager {
    
    static var shared = DataManager()
    
    let person = Person(login: "1111",
                        password: "1111",
                        request: [Request(address: "Мира 2а",
                                          members: [Member(fullName: "Иванов Иван Иванович",
                                                           nameCar: "Опель",
                                                           modelCar: "Astra",
                                                           gosNumber: "T000TT174",
                                                           companyName: "Тинькоф",
                                                           serialDocument: "XXX",
                                                           numberDocument: "1234567890"),
                                                    Member(fullName: <#T##String#>,
                                                           nameCar: <#T##String#>,
                                                           modelCar: <#T##String#>,
                                                           gosNumber: <#T##String#>,
                                                           companyName: <#T##String#>,
                                                           serialDocument: <#T##String#>,
                                                           numberDocument: <#T##String#>)])])
                                  
    
    
    init() {}
    
    
}
