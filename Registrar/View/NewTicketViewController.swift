//
//  NewTicketViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 01.02.2023.
//

import UIKit

final class NewTicketViewController: UIViewController {
    var ticket: Ticket!
    
    var flagEditingMember = true
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var addNewMember: UIButton!
    
    
    private var members: [Member] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNewMember.layer.cornerRadius = 10
        
        tableView.delegate = self
        tableView.dataSource = self
        title = ticket.address
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
    }
    
    // обновления таблицы при добавлении новых элементов
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        flagEditingMember = true
    }
    
    @IBAction func addMember(_ sender: UIButton) {
        flagEditingMember = false
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
        content.text = "\(indexPath.row + 1). \(member.nameCar) \(member.modelCar)"
        content.secondaryText = member.gosNumber
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Удалить"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        ticket.members.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let photoVC = segue.destination as? PhotoTableViewController {
            photoVC.ticket = ticket
        } else if let ticketVC = segue.destination as? MemberViewController {
            if flagEditingMember {
                guard let index = tableView.indexPathForSelectedRow else { return }
                ticketVC.ticket = ticket
                ticketVC.member = ticket.members[index.row]
                ticketVC.index = index.row
                ticketVC.flagEditingMember = true
            } else {
                ticketVC.ticket = ticket
                ticketVC.flagEditingMember = false
            }
        }
    }
}


