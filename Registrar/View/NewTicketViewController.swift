//
//  NewTicketViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 01.02.2023.
//

import UIKit

class NewTicketViewController: UIViewController {
    var ticket: Ticket!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addRequestButton: UIButton!
    
    private var members: [Member] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRequestButton.layer.cornerRadius = 10
        
        tableView.delegate = self
        tableView.dataSource = self
        addressTextField.text = ticket.address
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(addButtonTapped))
    }
    
    // обновления таблицы при добавлении элементов
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @objc private func addButtonTapped() {
        let option = OptionNewTicketController()
        option.photos = ticket.photo
        navigationController?.pushViewController(option, animated: true)
    }
    
}

extension NewTicketViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ticket.members.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        let member = ticket.members[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(member.nameCar) \(member.modelCar)"
        content.secondaryText = member.gosNumber
        cell.contentConfiguration = content
        
        return cell
    }
    
    // анимация появления ячеек
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.alpha = 0
//        UIView.animate(withDuration: 0.5, delay: 0.1 * Double(indexPath.row), options: .curveEaseInOut, animations: {
//        cell.alpha = 1
//        })
//    }
    
    // переход на экран участников
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let memberVC = segue.destination as? MemberViewController else { return }
        memberVC.ticket = ticket
    }
}


