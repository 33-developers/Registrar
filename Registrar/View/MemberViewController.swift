//
//  MemberViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 31.01.2023.
//

import UIKit

final class MemberViewController: UIViewController {

    var ticket: Ticket!
    var member: Member!
    var index: Int!
    
    var flagEditingMember = false
    
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var nameCar: UITextField!
    @IBOutlet weak var modelCar: UITextField!
    @IBOutlet weak var gosNumber: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var serialDocument: UITextField!
    @IBOutlet weak var numberDocument: UITextField!
    
    @IBOutlet weak var memberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationButton()
        memberButton.layer.cornerRadius = 10
    }
    
    func configurationButton() {
        if !flagEditingMember {
            title = "Новый участник"
            memberButton.setTitle("Добавить участника", for: .normal)
        } else {
            title = "Участник № \(index + 1)"
            getInfoMember()
            memberButton.setTitle("Сохранить", for: .normal)
        }
    }
    
    func getInfoMember() {
        fullName.text = member.fullName
        nameCar.text = member.nameCar
        modelCar.text = member.modelCar
        gosNumber.text = member.gosNumber
        companyName.text = member.companyName
        serialDocument.text = member.serialDocument
        numberDocument.text = member.numberDocument
    }
    
    @IBAction func actionCheckPolicy(_ sender: UIButton) {
        if serialDocument.text!.isEmpty || numberDocument.text!.isEmpty {
            showAlert(withTitle: "Ошибка!", andMessage: "Заполните поля: серия и номер полиса.")
        }
    }
    
    @IBAction func actionAppendNewMember(_ sender: UIButton) {
        if !flagEditingMember {
            newMember()
        } else {
            member.fullName = fullName.text ?? ""
            member.nameCar = nameCar.text ?? ""
            member.modelCar = modelCar.text ?? ""
            member.gosNumber = gosNumber.text ?? ""
            member.companyName = companyName.text ?? ""
            member.serialDocument = serialDocument.text ?? ""
            member.numberDocument = numberDocument.text ?? ""
        }
        navigationController?.popViewController(animated: true)
    }
    
    func newMember() {
        let member = Member(
            fullName: fullName.text ?? "",
            nameCar: nameCar.text ?? "",
            modelCar: modelCar.text ?? "",
            gosNumber: gosNumber.text ?? "",
            companyName: companyName.text ?? "",
            serialDocument: serialDocument.text ?? "",
            numberDocument: numberDocument.text ?? ""
        )
        ticket.members.append(member)
    }
}

// всплывающее окно
extension MemberViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
