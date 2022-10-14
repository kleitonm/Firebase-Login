//
//  LoginViewController.swift
//  M21-Firebase
//
//  Created by Kleiton Mendes on 29/09/22.
//

import Foundation
import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var auth: Auth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let email = self.emailTextField.text ?? ""
        let password = self.passwordTextField.text ?? ""
        
        self.auth?.signIn(withEmail: email, password: password, completion: { (usuario, error) in
            
            if error != nil {
                self.dispatchAlert("Atenção", message: "Dados incorretos, tente novamente")
            } else {
                if usuario == nil {
                    self.dispatchAlert("Atenção", message: "Tivemos um problema inesperado")
                } else {
                    self.dispatchAlert("Parabéns", message: "Login Efetuado com Sucesso!!!!")
                }
                
            }
            
        })
    }
}

