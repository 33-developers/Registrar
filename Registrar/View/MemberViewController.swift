//
//  MemberViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 31.01.2023.
//

import UIKit

class MemberViewController: UIViewController {

    var ticket: Ticket!
    
    @IBOutlet weak var memberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(ticket.members.count)
        memberButton.layer.cornerRadius = 10
    }
    
    @IBAction func actionAppendNewMember(_ sender: UIButton) {
        newMember()
        navigationController?.popViewController(animated: true)
    }
    
    
    
    func newMember() {
        let member = Member(
            fullName: "12",
            nameCar: "12",
            modelCar: "12",
            gosNumber: "12",
            companyName: "12",
            serialDocument: "12",
            numberDocument: "12")
        
        ticket.members.append(member)
    }
    
    
    
}
