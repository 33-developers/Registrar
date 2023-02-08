//
//  AboutViewController.swift
//  Registrar
//
//  Created by Alexey Manokhin on 02.02.2023.
//

import UIKit

class AboutViewController: UIViewController {
    
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

        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.2 * Double(indexPath.row), options: .curveEaseIn, animations: { cell.alpha = 1 }, completion: nil)
    }
    
    
    
    
}
