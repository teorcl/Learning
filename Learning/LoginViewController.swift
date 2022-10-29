//
//  LoginViewController.swift
//  Learning
//
//  Created by TEO on 26/10/22.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Rerencias a la UI
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonAction() {
        // 1. Obtener los valores de los TextFields
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if (email == "teo.calle.lara@gmail.com" && password == "123") {
            print("Bienvenido")
            performSegue(withIdentifier: "home_segue", sender: nil)
        } else{
            print("Credenciales incorrectas")
        }
        
    }
    

}

