//
//  DataManager.swift
//  Registrar
//
//  Created by Максим Гурков on 31.01.2023.
//
import UIKit

class DataManager {
    
    static var shared = DataManager()
    
    let person = Person(
        login: "1111",
        password: "1111",
        tickets: [
            Ticket(
                address: "Блюхера 63",
                status: "Закрыта",
                members: [
                    Member(
                        fullName: "Иванов Иван Иванович",
                        nameCar: "Фольксваген",
                        modelCar: "Сантана",
                        gosNumber: "T010TT174",
                        companyName: "Тинькоф",
                        serialDocument: "XXX",
                        numberDocument: "1234567890"
                    ),
                    Member(
                        fullName: "Серов Илья Петрович",
                        nameCar: "Ваз",
                        modelCar: "21014",
                        gosNumber: "В716КВ96",
                        companyName: "АльфаСтрахование",
                        serialDocument: "TTT",
                        numberDocument: "7195736588"
                    )
                ], photo: [
                    Photo(imageName: "Блюхера 63 1"),
                    Photo(imageName: "Блюхера 63 2"),
                    Photo(imageName: "Блюхера 63 3"),
                    Photo(imageName: "Блюхера 63 4"),
                    Photo(imageName: "Блюхера 63 5"),
                    Photo(imageName: "Блюхера 63 6"),
                    Photo(imageName: "Блюхера 63 7"),
                    Photo(imageName: "Блюхера 63 8"),
                    Photo(imageName: "Блюхера 63 9"),
                    Photo(imageName: "Блюхера 63 10"),
                    Photo(imageName: "Блюхера 63 11"),
                    Photo(imageName: "Блюхера 63 12"),
                    Photo(imageName: "Блюхера 63 13"),
                    Photo(imageName: "Блюхера 63 14"),
                    Photo(imageName: "Блюхера 63 15"),
                    Photo(imageName: "Блюхера 63 16"),
                    Photo(imageName: "Блюхера 63 17"),
                    Photo(imageName: "Блюхера 63 18"),
                    Photo(imageName: "Блюхера 63 19")
                ]
            ),
            Ticket(
                address: "Блюхера-Дарвина",
                status: "Закрыта",
                members: [
                    Member(
                        fullName: "Лис Владислав Владимирович",
                        nameCar: "Лада",
                        modelCar: "Гранта",
                        gosNumber: "С711ОТ66",
                        companyName: "Югория",
                        serialDocument: "XXX",
                        numberDocument: "1275638830"
                    ),
                    Member(
                        fullName: "Спицин Валерий Геннадьевич",
                        nameCar: "Митсубиси",
                        modelCar: "Лансер",
                        gosNumber: "М066АВ74",
                        companyName: "АльфаСтрахование",
                        serialDocument: "ААА",
                        numberDocument: "9165519077"
                    ),
                    Member(
                        fullName: "Попова Светлана Валерьевна",
                        nameCar: "Ниссан",
                        modelCar: "Альмера",
                        gosNumber: "Н831НР96",
                        companyName: "АльфаСтрахование",
                        serialDocument: "РРР",
                        numberDocument: "1937789351"
                    )
                ], photo: [
                    Photo(imageName: "Блюхера-Дарвина 1"),
                    Photo(imageName: "Блюхера-Дарвина 2"),
                    Photo(imageName: "Блюхера-Дарвина 3"),
                    Photo(imageName: "Блюхера-Дарвина 4"),
                    Photo(imageName: "Блюхера-Дарвина 5"),
                    Photo(imageName: "Блюхера-Дарвина 6"),
                    Photo(imageName: "Блюхера-Дарвина 7"),
                    Photo(imageName: "Блюхера-Дарвина 8"),
                    Photo(imageName: "Блюхера-Дарвина 9"),
//                    Photo(imageName: "Блюхера-Дарвина 10"),
//                    Photo(imageName: "Блюхера-Дарвина 11"),
//                    Photo(imageName: "Блюхера-Дарвина 12"),
//                    Photo(imageName: "Блюхера-Дарвина 13"),
//                    Photo(imageName: "Блюхера-Дарвина 14"),
//                    Photo(imageName: "Блюхера-Дарвина 15"),
//                    Photo(imageName: "Блюхера-Дарвина 16"),
//                    Photo(imageName: "Блюхера-Дарвина 17"),
//                    Photo(imageName: "Блюхера-Дарвина 18"),
//                    Photo(imageName: "Блюхера-Дарвина 19"),
//                    Photo(imageName: "Блюхера-Дарвина 20")
                ]
            ),
            Ticket(
                address: "Блюхера-Доватора",
                status: "В работе",
                members: [
                    Member(
                        fullName: "Янушкин Максим Семёнович",
                        nameCar: "Киа",
                        modelCar: "Пиканто",
                        gosNumber: "Р736ОН74",
                        companyName: "Ингосстрах",
                        serialDocument: "МММ",
                        numberDocument: "1946998809"
                    ),
                    Member(
                        fullName: "Cветашкина Инна Сергеевна",
                        nameCar: "Субару",
                        modelCar: "s20",
                        gosNumber: "О100ОО174",
                        companyName: "Зетта",
                        serialDocument: "МММ",
                        numberDocument: "9456628777"
                    )
                ], photo: [
                    Photo(imageName: "Блюхера-Доватора 1"),
                    Photo(imageName: "Блюхера-Доватора 2"),
                    Photo(imageName: "Блюхера-Доватора 3"),
                    Photo(imageName: "Блюхера-Доватора 4"),
                    Photo(imageName: "Блюхера-Доватора 5"),
                    Photo(imageName: "Блюхера-Доватора 6"),
                    Photo(imageName: "Блюхера-Доватора 7"),
                    Photo(imageName: "Блюхера-Доватора 8"),
                    Photo(imageName: "Блюхера-Доватора 9")
                ]
            ),
            Ticket(
                address: "Свердловский проспект - Сони Кривой",
                status: "Не принята",
                members: [
                    Member(
                        fullName: "Айс Нина Степановна",
                        nameCar: "Лада",
                        modelCar: "Приора",
                        gosNumber: "М665НР74",
                        companyName: "АльфаСтрахование",
                        serialDocument: "ЕЕЕ",
                        numberDocument: "8590778784"
                    ),
                    Member(
                        fullName: "Букмаков Константин Богданович",
                        nameCar: "Шкода",
                        modelCar: "Цуперг",
                        gosNumber: "Т744ТН774",
                        companyName: "Тинькоф",
                        serialDocument: "ЕЕЕ",
                        numberDocument: "8567987893"
                    )
                ], photo: [
                    Photo(imageName: "")
                ]
            )
        ]
    )
    
    let developers = [
        Developer(
            fullName: "Игорь Солодянкин",
            role: "Team Leader",
            photo: UIImage(named: "igor") ?? UIImage()
        ),
        Developer(
            fullName: "Алексей Манохин",
            role: "Developer",
            photo: UIImage(named: "alexey") ?? UIImage()
        ),
        Developer(
            fullName: "Айдар Оспанов",
            role: "Developer",
            photo: UIImage(named: "aidar") ?? UIImage()
        ),
        Developer(
            fullName: "Максим Гурков",
            role: "Developer",
            photo: UIImage(named: "maxim") ?? UIImage()
        )
    ]
    
    
    init() {}
    
    
}

