//
//  AddressTableViewController.swift
//  Registrar
// 
//  Created by Максим Гурков on 28.01.2023.
//

import UIKit

final class AddressTableViewController: UITableViewController {
    
    var person: User!
    var delegate: AuthVCDelegate!
    
    private let searchController = UISearchController(searchResultsController: nil)
    private var filteredTicket: [Ticket] = []
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Адреса заявок"
        delegate.getEmpty(property: "")
        settingSearchController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Заявки", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func addNewTicketButton(_ sender: Any) {
        alertAppendNewTicket()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filteredTicket.count
        } else {
            return person.tickets.count
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Удалить"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if isFiltering {
            content.text = filteredTicket[indexPath.row].address
        } else {
            content.text = person.tickets[indexPath.row].address
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    // Передача данных по тапу на другой экран
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let ticketVC = segue.destination as? NewTicketViewController else { return }
        var ticket: Ticket
        if isFiltering {
            ticket = filteredTicket[index.row]
        } else {
            ticket = person.tickets[index.row]
        }
        ticketVC.ticket = ticket
    }
    
    // Настройка строки поиска
    private func settingSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}

// Alert с TextField и 2 кнопками
extension AddressTableViewController {
    func alertAppendNewTicket() {
        let alert = UIAlertController( title: "Новая заявка", message: "Заполните поле, чтобы продолжить", preferredStyle: .alert)
        let activeAlert = UIAlertAction(title: "Добавить", style: .default) { _ in
            guard let newAddress = alert.textFields?.first?.text, !newAddress.isEmpty else { return }
            let ticket = Ticket(address: newAddress, status: newAddress, members: [], photo: [])
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

extension AddressTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filteredTicket = person.tickets.filter({ (ticket: Ticket) -> Bool in
            return ticket.address.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            person.tickets.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
