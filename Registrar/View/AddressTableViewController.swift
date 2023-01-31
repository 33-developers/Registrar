//
//  AddressTableViewController.swift
//  Registrar
//
//  Created by Максим Гурков on 28.01.2023.
//

import UIKit

class AddressTableViewController: UITableViewController {
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Заявки"

    }
    
    @IBAction func addNewTicketButton(_ sender: Any) {
        alertAppendNewTicket()
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.request.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = person.request[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.address
        content.secondaryText = person.status
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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let ticketVC = segue.destination as? TicketViewController else { return }
//
//        ticketVC.person = person
//    }
}

extension AddressTableViewController {
    func alertAppendNewTicket() {
        let alert = UIAlertController( title: "Новая заявка", message: "Заполните поле, чтобы продолжить", preferredStyle: .alert)
        let activeAlert = UIAlertAction(title: "Добавить", style: .default) { _ in
            guard let expense = alert.textFields?.first?.text, !expense.isEmpty else { return }
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
