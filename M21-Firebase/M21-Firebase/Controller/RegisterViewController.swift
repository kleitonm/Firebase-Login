//
//  RegisterViewController.swift
//  M21-Firebase
//
//  Created by Kleiton Mendes on 29/09/22.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var validateLabel: UILabel!
    
    var auth: Auth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
    }
    

    @IBAction func registerButton(_ sender: UIButton) {
        
        let name: String = self.nameTextField.text ?? ""
        let lastname: String = self.lastnameTextField.text ?? ""
        let email: String = self.emailTextField.text ?? ""
        let password: String = self.passwordTextField.text ?? ""
        let validatedLabel: String = self.validateLabel.text ?? ""
        
        self.auth?.createUser(withEmail: email, password: password, completion: { (result, error) in
            
            if error != nil {
                self.dispatchAlert("Atenção", message: "Falha ao cadastrar")
            } else {
                self.dispatchAlert("Atenção", message: "Sucesso ao Cadastrar")
                self.completeRegister()
            }
        })
    }
    
    private func completeRegister() {
        DispatchQueue.main.async {
            let controller = self.storyboard!.instantiateViewController(withIdentifier: "LoginViewController") as! UINavigationController
            self.present(controller, animated: true, completion: nil)
        }
    }
    
}
