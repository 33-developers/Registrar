//
//  PhotoTableViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 11.03.2023.
//

import UIKit

class PhotoTableViewController: UITableViewController {
    
    var buttonImage: UIImage?
    
    var ticket: Ticket!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        buttonImage = sender.currentBackgroundImage
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ticket.photos.count / 2 + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as? PhotoTableViewCell else {
            return UITableViewCell()
        }
        
        let evenIndex = indexPath.row * 2
        let oddIndex = evenIndex + 1
        
        if (evenIndex < ticket.photos.count) {
            if let evenImage = UIImage(named: ticket.photos[evenIndex].imageName) {
                cell.firstPhotoButton.setBackgroundImage(evenImage, for: .normal)
            }
        }
        
        if (oddIndex < ticket.photos.count) {
            if let oddImage = UIImage(named: ticket.photos[oddIndex].imageName) {
                cell.secondPhotoButton.setBackgroundImage(oddImage, for: .normal)
            }
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoPhotoVC = segue.destination as? InfoPhotoViewController else { return }
        if segue.identifier == "photoOne" {
            infoPhotoVC.passedButtonImage = buttonImage
        }
        if segue.identifier == "photoTwo" {
            infoPhotoVC.passedButtonImage = buttonImage
        }
    }
}
