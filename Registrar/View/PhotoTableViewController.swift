//
//  PhotoTableViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class PhotoTableViewController: UITableViewController {
    
    private let person = DataManager.shared.person
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoPhotoVC = segue.destination as? InfoPhotoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let photo = person.tickets[indexPath.section].photo[indexPath.row]
        infoPhotoVC?.photo = photo
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Блюхера"
        case 1: return "Блюхера-Дарвина"
        default: return "Блюхера-Доватора"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.tickets[section].photo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as? PhotoTableViewCell else {
           return UITableViewCell()
        }
        
        let photo = person.tickets[indexPath.section].photo[indexPath.row].imageName
        cell.getSet(photo: photo, value: indexPath.row)
        return cell
    }
}
