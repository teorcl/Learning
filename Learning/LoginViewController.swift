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
    @IBOutlet weak var emailSwitch: UISwitch!
    
    private let storage = UserDefaults.standard
    private let emailKey = "emailKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // De esta manera buscamos un string en los user defaults y lo asignamos.
        if let storedEmail = storage.string(forKey: emailKey){
            emailTextField.text = storedEmail
            emailSwitch.isOn = true
        }else{
            emailSwitch.isOn = false
        }
    }
    
    
    @IBAction func loginButtonAction() {
        // 1. Obtener los valores de los TextFields
        let email = emailTextField.text
        let password = passwordTextField.text
        
        // Si los valores anteriores fueran opcionales se deberían poner unwrapping
        if email == "teo.calle.lara@gmail.com" && password == "123" {
            if emailSwitch.isOn {
                // Así es como guardamos valores en nuestros user defaults
                storage.set(email, forKey: emailKey)
            }else{
                storage.removeObject(forKey: emailKey)
            }
            print("Bienvenido")
            performSegue(withIdentifier: "home_segue", sender: nil)
        } else{
            print("Credenciales incorrectas")
        }
        
    }
    

}

