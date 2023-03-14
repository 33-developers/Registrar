//
//  AuthorizationViewController.swift
//  Registrar
// 
//  Created by Игорь Солодянкин on 28.01.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    
    var user = User.newUser()
    
    @IBOutlet weak var authorizationButton: UIButton!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        authorizationButton.layer.cornerRadius = 10
        loginTextField.text = user.login
        passwordTextField.text = user.password
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func actionAuthorizationButton(_ sender: UIButton) {
        guard loginTextField.text != "",
              passwordTextField.text != "" else {
            getAlertMessage(
                title: "⚠️",
                message: "Логин и пароль не могут быть пустыми! Заполните оба поля!"
            )
            return
        }
        
        guard loginTextField.text == user.login, passwordTextField.text == user.password else {
            getAlertMessage(
                title: "Неправильный логин или пароль",
                message: "Введите корректные данные для входа"
            )
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let addressVC = segue.destination as? AddressTableViewController else { return }
        addressVC.person = user
    }
    
    private func getAlertMessage(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "ОК",
            style: .cancel, handler: { _ in
                self.passwordTextField.text = ""
            }
        )
        )
        present(alert, animated: true)
    }
    
    @IBAction func forgotButtonTapped() {
        getAlertMessage(title: "Ой!💡", message: "Логин: \(user.login)\nПароль: \(user.password)")
    }
}

extension AuthorizationViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension AuthorizationViewController: UITextFieldDelegate {
    // Переход на следующее текстовое поле
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
