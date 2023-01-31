//
//  MemberViewController.swift
//  Registrar
//
//  Created by Игорь Солодянкин on 31.01.2023.
//

import UIKit

class MemberViewController: UIViewController {

    @IBOutlet weak var memberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        memberButton.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
