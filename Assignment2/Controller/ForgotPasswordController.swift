//
//  ForgotPasswordController.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 10/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class ForgotPasswordController: UIViewController {

    // MARK: - outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField: UITextField!
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    //Button action
    @IBAction func okButton(_ sender: UIButton) {
        
        //not empty fields
        if( validateField(textField : emailTextField) &&  validateField(textField : nameTextField))
        {
            //existing account
            if(  authenticateUser() )
            {
                // update password

                emailTextField.isEnabled = false
                nameTextField.isEnabled = false
                passwordTextField.isHidden = false
                passwordConfirmationTextField.isHidden = false
                updateButton.isHidden  = false
                okButton.isHidden = true
                
                self.label.textColor =  UIColor.blue
                self.label.text = "Hi \(nameTextField.text?.description ) , Update your password! "
               
               
            }else {
                
                //user is not exist
               
                self.label.textColor =  UIColor.red
                self.label.text = "Sorry can't found you! "
                
            }
            
        }
        
    }
    
   
    
    
    func  validateField(textField: UITextField) -> Bool{
        if(   (textField.text?.count)! > 0){
            label.text  = " "
            return true
        }else {
            label.textColor =  UIColor.red
            label.text = "Empty Fields "
            return false
        }
    }
    
    func  authenticateUser() -> Bool {
        if(Model().isUserExisit(email: emailTextField.text!))
        {
                return true
            
        }
        return false
        
    }
    
    func validatePassword() -> Bool{
        if(passwordTextField.text == passwordConfirmationTextField.text ){
            label.text = ""
            return true
        }
        else{
            label.textColor =  UIColor.red
            label.text = "Passwords is not matching ! "
            return false
        }
        
    }
    
    
    
    @IBAction func updateButton(_ sender: UIButton) {
        //check password field are not empty
        if( validateField(textField : passwordTextField) &&  validateField(textField : passwordConfirmationTextField))
        {
            
            //valid password
            if( validatePassword()){

                //get user
                let user : User =  Model().getUser(email: emailTextField.text!)
                //update
                Model().updatePass(user: user, pass: passwordTextField.text!)
                
                label.text = "Password is updated"
                
            }
        }
        
        
    }
    @IBAction func cancelButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
