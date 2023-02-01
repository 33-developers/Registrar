//
//  NewTicketViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 01.02.2023.
//

import UIKit

class NewTicketViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addRequestButton: UIButton!
    
    private var members: [Member] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRequestButton.layer.cornerRadius = 10
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func getCountMembers() {
        for request in person.ticket {
            for member in request.members {
                members.append(member)
            }
        }
    }
    
    
}

extension NewTicketViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        let member = members[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(member.nameCar) \(member.modelCar)"
        content.secondaryText = member.gosNumber
        cell.contentConfiguration = content
        
        return cell
    }
    
    // анимация появления ячеек
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.1 * Double(indexPath.row), options: .curveEaseInOut, animations: {
        cell.alpha = 1
        })
    }
}


