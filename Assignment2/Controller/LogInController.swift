//
//  LogInController.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 10/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class LogInController: UIViewController {

    //// MARK: - outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var model : Model!
    var isLogin: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LoginController---Login status: \(isLogin)")
        // Do any additional setup after loading the view.
    }

    //Button action
    @IBAction func loginButton(_ sender: UIButton) {
        let  email : String  = emailTextField.text!;
        let password : String = passwordTextField.text!;
        
        print("EMAIL : \(emailTextField.text!)")
        
        if( validateFields() ){
            
            if(model.isUserExisit(email: email))
            {
                //check password
                let user : User =  model.getUser(email: email)

                if(user.password == password)
                {
                    label.textColor =  UIColor.blue
                    label.text = "Hi \(email) ! "
                    isLogin = true
                    performSegue(withIdentifier: "LoginToViewControllerSegue", sender: self)
                }
                else{
                    label.textColor =  UIColor.red
                    label.text = "Sorry, Wrong password! "
                }
            }else{
                label.textColor =  UIColor.red
                label.text = "Sorry, Not exisit email! "
            }
        }
    }
    
    
    //Pass object model and login status to ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "LoginToViewControllerSegue" {
            if let vc = segue.destination as? ViewController {
                vc.model = model
                vc.isLogin = isLogin
            }
        }
    }
   
    
    func  validateFields() -> Bool{
        if(   (passwordTextField.text?.count)! > 0
            &&  (emailTextField.text?.count)! > 0
             ){
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
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotPasswordSegue", sender: self)

   
    }
    
   
   

}
