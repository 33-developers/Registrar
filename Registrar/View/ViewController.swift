//
//  ViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var authorizationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        authorizationButton.layer.cornerRadius = 10
        
    }


}

