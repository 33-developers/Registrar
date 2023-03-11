//
//  PhotoTableViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class PhotoTableViewController: UITableViewController {
    
//    private let person = DataManager.shared.person
    var ticket: Ticket!
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tableView.reloadData()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.estimatedRowHeight = 100
//        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let infoPhotoVC = segue.destination as? InfoPhotoViewController
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        let photo = person.tickets[indexPath.section].photos[indexPath.row]
//        infoPhotoVC?.photo = photo
//    }

    // MARK: - Table view data source
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        3
//    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0: return "Блюхера 63"
//        case 1: return "Блюхера-Дарвина"
//        default: return "Блюхера-Доватора"
//        }
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0: return  person.tickets[section].photos.count
//        case 1: return  person.tickets[section].photos.count
//        default: return person.tickets[section].photos.count
//        }
        ticket.photos.count / 2 + 1
//        person.tickets[section].photos.count / 2 + 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as? PhotoTableViewCell else {
           return UITableViewCell()
        }
        
//        let photo = person.tickets[indexPath.section].photo[indexPath.row].imageName
//        let photoValue = person.tickets[indexPath.section].photo.count
        
        let evenIndex = indexPath.row * 2
        let oddIndex = evenIndex + 1

        if (evenIndex < ticket.photos.count) {
            if let evenImage = UIImage(named: ticket.photos[evenIndex].imageName) {
                cell.photoOne.image = evenImage
            }
        }

        if (oddIndex < ticket.photos.count) {
            if let oddImage = UIImage(named: ticket.photos[oddIndex].imageName) {
                cell.photoTwo.image = oddImage
            }
        }
        return cell
    }
}
