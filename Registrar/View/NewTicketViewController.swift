//
//  NewTicketViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 01.02.2023.
//

import UIKit

class NewTicketViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addRequestButton: UIButton!
    
    
    // список для вывода ТС, временно прописал через 2 массива.
    let members = [
        "БМВ х6",
        "Ауди А4",
        "Рено Дастер",
        "Ниссан Альмера",
        "Хонда Акцент"
    ]
    
    let numbers = [
        "Т721СА74",
        "В814ОТ174",
        "У973ТТ74",
        "Р815РА774",
        "В900МР174"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRequestButton.layer.cornerRadius = 10
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    // анимация появления ячеек
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.1 * Double(indexPath.row), options: .curveEaseInOut, animations: {
        cell.alpha = 1
        })
    }
}

extension NewTicketViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }
}

extension NewTicketViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = members[indexPath.row]
        content.secondaryText = numbers[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
}
