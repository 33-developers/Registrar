//
//  AuthorizationViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 28.01.2023.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    var person = Person.newPerson()

    @IBOutlet weak var authorizationButton: UIButton!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        authorizationButton.layer.cornerRadius = 10
        
    }

    @IBAction func aboutButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func actionAuthorizationButton(_ sender: UIButton) {
        
        guard (loginTextField.text?.isEmpty) != nil else { return }
        guard (passwordTextField.text?.isEmpty) != nil else { return }
        
        if person.login == loginTextField.text && person.password == passwordTextField.text {
//            let next = self.storyboard?.instantiateViewController(withIdentifier: "address") as! AddressTableViewController
//            self.present(next, animated: true, completion: nil)
            print("OK")
        } else {
            print("no")
            return
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let addressVC = segue.destination as? AddressTableViewController else { return }
        
        addressVC.person = person
    }
    
}

