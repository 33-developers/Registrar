//
//  AddressTableViewController.swift
//  Registrar
//
//  Created by Максим Гурков on 28.01.2023.
//

import UIKit

class AddressTableViewController: UITableViewController {
    
    var person: Person!
    var tickets: [Ticket] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Заявки"
        
    }
    
    @IBAction func addNewTicketButton(_ sender: Any) {
        alertAppendNewTicket()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.tickets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = person.tickets[indexPath.row].address
        cell.contentConfiguration = content
        
        return cell
    }
    
    // анимация появления ячеек
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.1 * Double(indexPath.row), options: .curveEaseInOut, animations: {
            cell.alpha = 1
        })
    }
    
    // передача тикета по тапу
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let ticketVC = segue.destination as? NewTicketViewController else { return }
        ticketVC.ticket = person.tickets[index.row]
    }
}

// Alert с TextField и 2 кнопками
extension AddressTableViewController {
    func alertAppendNewTicket() {
        let alert = UIAlertController( title: "Новая заявка", message: "Заполните поле, чтобы продолжить", preferredStyle: .alert)
        let activeAlert = UIAlertAction(title: "Добавить", style: .default) { _ in
            guard let newAddress = alert.textFields?.first?.text, !newAddress.isEmpty else { return }
            let ticket = Ticket(address: newAddress, status: newAddress, members: [])
            self.person.tickets.append(ticket)
            self.tableView.reloadData()
        }
        let cancelAlert = UIAlertAction(title: "Отмена", style: .destructive)
        alert.addAction(activeAlert)
        alert.addAction(cancelAlert)
        alert.addTextField { textField in
            textField.placeholder = "Введите адрес"
        }
        present(alert, animated: true)
    }
}
