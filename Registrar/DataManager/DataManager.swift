//
//  DataManager.swift
//  Registrar
//
//  Created by Максим Гурков on 31.01.2023.
//

class DataManager {
    
    static var shared = DataManager()
    
    let person = Person(
        login: "1111",
        password: "1111",
        tickets: [
            Ticket(
                address: "Чичерина 44",
                status: "Закрыта",
                members: [
                    Member(
                        fullName: "Иванов Иван Иванович",
                        nameCar: "Опель",
                        modelCar: "Астра",
                        gosNumber: "T010TT174",
                        companyName: "Тинькоф",
                        serialDocument: "XXX",
                        numberDocument: "1234567890"
                    ),
                    Member(
                        fullName: "Серов Илья Петрович",
                        nameCar: "Форд",
                        modelCar: "Фокус",
                        gosNumber: "В716КВ96",
                        companyName: "АльфаСтрахование",
                        serialDocument: "TTT",
                        numberDocument: "7195736588"
                    )
                ]
            ),
            Ticket(
                address: "250 лет Челябинска - Чичерина",
                status: "В работе",
                members: [
                    Member(
                        fullName: "Лис Владислав Владимирович",
                        nameCar: "БМВ",
                        modelCar: "х6",
                        gosNumber: "С711ОТ66",
                        companyName: "Югория",
                        serialDocument: "XXX",
                        numberDocument: "1275638830"
                    ),
                    Member(
                        fullName: "Спицин Валерий Геннадьевич",
                        nameCar: "Рено",
                        modelCar: "Дастер",
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
                ]
            ),
            Ticket(
                address: "пр. Ленина 17",
                status: "Не принята",
                members: [
                    Member(
                        fullName: "Ваймер Игорь Дмитриевич",
                        nameCar: "Шкода",
                        modelCar: "Актавия",
                        gosNumber: "А645ОО23",
                        companyName: "Ингосстрах",
                        serialDocument: "МММ",
                        numberDocument: "2460946587"
                    )
                ]
            ),
            Ticket(
                address: "ул. Вагнера 64",
                status: "Не принята",
                members: [
                    Member(
                        fullName: "Янушкин Максим Семёнович",
                        nameCar: "Шкода",
                        modelCar: "Актавия",
                        gosNumber: "Р736ОН74",
                        companyName: "Ингосстрах",
                        serialDocument: "МММ",
                        numberDocument: "1946998809"
                    ),
                    Member(
                        fullName: "Cветашкина Инна Сергеевна",
                        nameCar: "Шкода",
                        modelCar: "Актавия",
                        gosNumber: "О100ОО174",
                        companyName: "Зетта",
                        serialDocument: "МММ",
                        numberDocument: "9456628777"
                    )
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
                ]
            )
        ]
    )
                                  
    
    
    init() {}
    
    
}
