//
//  SaveButton.swift
//  LoginAcazia
//
//  Created by Home on 4/4/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController {
    @IBAction func Login(_ sender: Any) {
        let length = passwordTextField.text?.count
        guard
            let email = emailTextField.text,!email.isEmpty,
            let password = passwordTextField.text, !password.isEmpty,
            length! > 6
            else {
                message = " Please enter text and password text > 6"
                showAlert(message: message!)
                
                return
        }
        if isValidEmail(emailID: email) == false {
            message = " Please enter valid email address"
            showAlert(message: message!)
        }
        
    }
    
    //Kiem tra dinh dang email
    func isValidEmail(emailID: String) -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with:emailID)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Thong bao", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
