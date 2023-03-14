//
//  MemberViewController.swift
//  Registrar
// 
//  Created by Игорь Солодянкин on 31.01.2023.
//

import UIKit

final class MemberViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var nameCar: UITextField!
    @IBOutlet weak var modelCar: UITextField!
    @IBOutlet weak var gosNumber: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var serialDocument: UITextField!
    @IBOutlet weak var numberDocument: UITextField!
    
    @IBOutlet weak var memberButton: UIButton!
    
    var ticket: Ticket!
    var member: Member!
    var index: Int!
    var flagEditingMember = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationButton()
        memberButton.layer.cornerRadius = 10
        fullName.delegate = self
        nameCar.delegate = self
        modelCar.delegate = self
        gosNumber.delegate = self
        companyName.delegate = self
        serialDocument.delegate = self
        numberDocument.delegate = self
    }
    
    @IBAction func actionCheckPolicy(_ sender: UIButton) {
        if serialDocument.text!.isEmpty || numberDocument.text!.isEmpty {
            showAlert(withTitle: "Ошибка!", andMessage: "Заполните поля: серия и номер полиса.")
        }
    }
    
    @IBAction func actionWithMember(_ sender: UIButton) {
        if !flagEditingMember {
            appendNewMember()
        } else {
            editingMember()
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    
    private func configurationButton() {
        if !flagEditingMember {
            title = "Новый участник"
            memberButton.setTitle("Добавить участника", for: .normal)
        } else {
            title = "Участник № \(index + 1)"
            getInfoMember()
            memberButton.setTitle("Сохранить", for: .normal)
        }
    }
    
    private func getInfoMember() {
        fullName.text = member.fullName
        nameCar.text = member.nameCar
        modelCar.text = member.modelCar
        gosNumber.text = member.gosNumber
        companyName.text = member.companyName
        serialDocument.text = member.serialDocument
        numberDocument.text = member.numberDocument
    }
    
    private func appendNewMember() {
        let member = Member(
            fullName: fullName.text ?? "",
            nameCar: nameCar.text ?? "",
            modelCar: modelCar.text ?? "",
            gosNumber: gosNumber.text ?? "",
            companyName: companyName.text ?? "",
            serialDocument: serialDocument.text ?? "",
            numberDocument: numberDocument.text ?? ""
        )
        if nameCar.text == "" || modelCar.text == "" {
            showAlert(withTitle: "Ошибка!", andMessage: "Заполните поля: марка и модель автомобиля.")
        } else {
            ticket.members.append(member)
        }
    }
    
    private func editingMember() {
        member.fullName = fullName.text ?? ""
        member.nameCar = nameCar.text ?? ""
        member.modelCar = modelCar.text ?? ""
        member.gosNumber = gosNumber.text ?? ""
        member.companyName = companyName.text ?? ""
        member.serialDocument = serialDocument.text ?? ""
        member.numberDocument = numberDocument.text ?? ""
    }
}

extension MemberViewController {
    // Закрытие клавиатуры по тапу
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // Всплывающее окно
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension MemberViewController: UITextFieldDelegate {
    // Переход на следующее текстовое поле
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case fullName:
            nameCar.becomeFirstResponder()
        case nameCar:
            modelCar.becomeFirstResponder()
        case modelCar:
            gosNumber.becomeFirstResponder()
        case gosNumber:
            companyName.becomeFirstResponder()
        case companyName:
            serialDocument.becomeFirstResponder()
        case serialDocument:
            numberDocument.becomeFirstResponder()
        default:
            numberDocument.resignFirstResponder()
        }
        return true
    }
}
