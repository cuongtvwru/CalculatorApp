//
//  ViewController.swift
//  LoginAcazia
//
//  Created by Home on 3/30/19.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class LoginViewController: UITableViewController,UITextFieldDelegate{
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    var message: String?
    
    var isSecureTextEntry: Bool = true
    var realText = ""
    
    @IBOutlet var cells: [UITableViewCell]!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        passwordTextField.addTarget(self, action: #selector(textFieldEditingChangle), for:.editingChanged)
     rightButtonTextField()
        
    }
    
  
   
}

