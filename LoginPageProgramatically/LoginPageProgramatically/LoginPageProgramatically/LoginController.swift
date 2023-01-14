//
//  ViewController.swift
//  LoginPageProgramatically
//
//  Created by Iphone XR on 12/11/22.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate {
    
    let titleLabel = UILabel()
    let titleLabel2 = UILabel()
    let emailTextField =  UITextField()
    let passwordTextField =  UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.isHidden = true
        titleLabel2.isHidden = true
        view.backgroundColor = .white
        
        
        titleLabel.text = "Validationlbl"
        titleLabel.numberOfLines = 0
        //titleLabel.frame = CGRect(x: 125, y: 125, width: 150, height: 30)
        titleLabel.textAlignment = .center
        titleLabel.sizeToFit()
        titleLabel.backgroundColor = UIColor.white
        self.view.addSubview(titleLabel)
        //Add Constraint to Label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 90).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        //MARK:- Create second label
        titleLabel2.text = "Validationlbl"
        titleLabel2.numberOfLines = 0
        //titleLabel.frame = CGRect(x: 125, y: 125, width: 150, height: 30)
        titleLabel2.textAlignment = .center
        titleLabel2.sizeToFit()
        titleLabel2.backgroundColor = UIColor.white
        self.view.addSubview(titleLabel2)
        //Add Constraint to Label
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: titleLabel2, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: titleLabel2, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: titleLabel2, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        //MARK:- Create a Emailtextfield programatically
        
        // let emailTextField =  UITextField()
        emailTextField.placeholder = " Enter your email"
        emailTextField.font = UIFont.systemFont(ofSize: 15)
        emailTextField.tag = 1
        emailTextField.borderStyle = UITextField.BorderStyle.roundedRect
        emailTextField.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        emailTextField.returnKeyType = UIReturnKeyType.done
        emailTextField.addTarget(self,
                                 action: #selector(textFieldDidChange),
                                 for: .editingChanged)
        emailTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        emailTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        emailTextField.delegate = self
        self.view.addSubview(emailTextField)
        //Add Constraint to Textfield
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: emailTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: emailTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: emailTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
        //MARK:- Create a Passwordtextfield programatically
        
        //let passwordTextField =  UITextField()
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.font = UIFont.systemFont(ofSize: 15)
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        passwordTextField.returnKeyType = UIReturnKeyType.done
        passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        passwordTextField.tag = 2
        passwordTextField.addTarget(self,action: #selector(textFieldDidChange),for: .editingChanged)
        passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        passwordTextField.delegate = self
        self.view.addSubview(passwordTextField)
        //Add Constraint to Textfield
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
        
        //MARK:- Create a LoginButton programatically
        //let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.blue, for: [])
        //myFirstButton.frame = CGRectMake(15, 250, 250, 100)
        loginButton.addTarget(self,
                              action: #selector(loginBtnAction),
                              for: .touchUpInside)
        // myFirstButton.addTarget(self, action: , forControlEvents: .TouchUpInside)
        loginButton.backgroundColor = UIColor.red
        loginButton.center = view.center
       view.addSubview(loginButton)
        self.view.addSubview(loginButton)
        //Add Constraint to Button
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 300).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
        
    }
    //MARK:- LoginAction
    @objc func loginBtnAction(_ sender: UIButton!){
       print("trt")
       titleLabel.isHidden = true
       titleLabel2.isHidden = true
        
        guard let email = emailTextField.text,emailTextField.text?.count != 0 else{
            titleLabel.isHidden = false
            titleLabel.text = "Please enter your email"
            return
            
        }
        
       guard let password = passwordTextField.text, passwordTextField.text?.count != 0  else {
            titleLabel.isHidden = false
            titleLabel.text = "Please enter your password"
            return
        }
        }
    
    //MARK:- Check textfield is empty or not
    @objc func textFieldDidChange(textfield: UITextField)   {
    let name1value = emailTextField.text
    let name2value = passwordTextField.text
       if (textfield.tag == 1) {
            print("hey")
           if name1value!.isEmpty  {
               titleLabel.text = "email is empty"
              titleLabel.isHidden = false
               }
           else{
              titleLabel.isHidden = true
               if isValidEmail(emailID: textfield.text!) == false {
                   titleLabel.isHidden = false
                  titleLabel.text = "Please enter valid email address"
               }else{
                   titleLabel.isHidden = true
               }
            }
       }else {
           if name2value!.isEmpty  {
             titleLabel2.text = "password is empty"
              titleLabel2.isHidden = false
               
               }
           else{
             titleLabel2.isHidden = true
               if isValidPassword(passwordID: textfield.text!) == false {
                   titleLabel2.isHidden = false
                   titleLabel2.text = "Please enter valid password address"
                   
               }
               else{
                   titleLabel2.isHidden = true
               }
           }
       }
       
    }
    
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
    
    func isValidPassword(passwordID:String) -> Bool {
        let regex = "(?=^.{8,}$)(?=.*\\d)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
        return passwordTest.evaluate(with: passwordID)
    }
}
