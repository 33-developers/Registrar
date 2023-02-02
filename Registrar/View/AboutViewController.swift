//
//  AboutViewController.swift
//  Registrar
//
//  Created by Alexey Manokhin on 02.02.2023.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var logoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImage.alpha = 0
        
        for label in labels {
            label.text = ""
        }
        
        UIView.animate(
            withDuration: 0.7,
            delay: 0.7,
            options: .curveEaseInOut,
            animations: { self.logoImage.alpha = 1.0 }
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        labels[4].animation(typing: "Команда разработчиков:", duration: 0.07)
        labels[0].animation(typing: "TL: Солодянкин Игорь", duration: 0.05)
        labels[1].animation(typing: "Гурков Максим", duration: 0.05)
        labels[2].animation(typing: "Оспанов Айдар", duration: 0.05)
        labels[3].animation(typing: "Манохин Алексей", duration: 0.05)
    }
}

extension UILabel {
    func animation(typing value: String, duration: Double){
        for char in value {
            self.text?.append(char)
            RunLoop.current.run(until: Date() + duration)
        }
    }
}
