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
}
