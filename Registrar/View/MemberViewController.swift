//
//  MemberViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 31.01.2023.
//

import UIKit

class MemberViewController: UIViewController {

    var ticket: Ticket!
    
    @IBOutlet weak var fullname: UITextField!
    @IBOutlet weak var nameCar: UITextField!
    @IBOutlet weak var modelCar: UITextField!
    @IBOutlet weak var gosNumber: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var serialDocument: UITextField!
    @IBOutlet weak var numberDocument: UITextField!
    
    
    @IBOutlet weak var memberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(ticket.members.count)
        memberButton.layer.cornerRadius = 10
    }
    
    @IBAction func actionCheckPolicy(_ sender: UIButton) {
        if serialDocument.text!.isEmpty || numberDocument.text!.isEmpty {
            checkPolicyValidity()
        }
    }
    
    
    @IBAction func actionAppendNewMember(_ sender: UIButton) {
        newMember()
        navigationController?.popViewController(animated: true)
    }
    
    func newMember() {
        let member = Member(
            fullName: fullname.text ?? "",
            nameCar: nameCar.text ?? "",
            modelCar: modelCar.text ?? "",
            gosNumber: gosNumber.text ?? "",
            companyName: companyName.text ?? "",
            serialDocument: serialDocument.text ?? "",
            numberDocument: numberDocument.text ?? "")
        
        ticket.members.append(member)
    }
}

// переписать метод по лекции от 05/02/2023
extension MemberViewController {
    private func checkPolicyValidity() {
        let alert = UIAlertController(title: "Ошибка!", message: "Заполните поля: серия и номер полиса", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
