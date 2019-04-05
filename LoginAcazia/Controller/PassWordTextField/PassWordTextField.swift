//
//  PassWordTextField.swift
//  LoginAcazia
//
//  Created by Home on 4/4/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController {
    @objc func textFieldEditingChangle(_ textField: UITextField) {
        updateMask()
    }
    
    func rightButtonTextField() {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "ic_eye_visible"), for: .normal)
        button.setImage(UIImage(named: "ic_eye_invisible"), for: .selected)
        
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        button.frame = CGRect(x: passwordTextField.frame.size.width - 15, y: 5, width: 20, height: 20)
        button.addTarget(self, action: #selector(refresh), for: .touchUpInside)
        passwordTextField.rightView = button
        passwordTextField.rightViewMode = .always
    }
    @IBAction func refresh(_ sender: Any) {
        
        if let button = sender as? UIButton {
            if button.isSelected {
                isSecureTextEntry = true
                updateMask()
                button.isSelected = false
                
                
                
            } else {
                isSecureTextEntry = !isSecureTextEntry
                updateMask()
                button.isSelected = true
            }
        }
    }
  
    
    //Cap nhap lai realText
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = self.realText
        let updateText = (currentText as NSString).replacingCharacters(in: range, with: string)
        self.realText = updateText
        return true
    }
    
    func updateMask() {
        var text = ""
        if isSecureTextEntry {
            for _ in realText {
                text = text + "*"
                
            }
        } else {
            text = self.realText
        }
        passwordTextField.text = text
    }
}
