//
//  AboutViewController.swift
//  Registrar
//
//  Created by Alexey Manokhin on 02.02.2023.
//

import UIKit

final class AboutViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var members = Developer.getMembers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AboutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DevelopersTableViewCell
        let member = members[indexPath.row]
        cell.getSet(member: member)
        cell.photo.layer.cornerRadius = cell.photo.frame.width / 2
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
