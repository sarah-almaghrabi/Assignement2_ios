//
//  RegistrationController.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 10/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//
import UIKit
import Foundation
class Registration_1Controller : UIViewController {
    
    //View variables
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var rePasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Button action
    @IBAction func buttonRegister(_ sender: UIButton) {
       
        let name : String  = nameTextField.text!
        let password : String = passwordTextField.text!
        let  email : String  =  emailTextField.text!
 
        if( validateFields() && validatePassword()){
            let user : User = User.init(name: name ,  password: password  , email:email )
            Model().addUser(user: user)
            label.textColor =  UIColor.blue
            label.text = "\(name), Your account is created !! "
        }
    }
    
    func validatePassword() -> Bool{
        if(passwordTextField.text == rePasswordTextField.text ){
            label.text = ""
          return true
        }
        else{
            label.textColor =  UIColor.red
            label.text = "Passwords is not matching ! "
            return false
        }
        
    }
    
    func  validateFields() -> Bool{
        if((nameTextField.text?.count)! > 0
            && (passwordTextField.text?.count)! > 0
            &&  (emailTextField.text?.count)! > 0
            && (rePasswordTextField.text?.count)! > 0 ){
            label.text  = " "
            return true
        }else {
            label.textColor =  UIColor.red
            label.text = "Empty Fields "
            return false
        }
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
}
