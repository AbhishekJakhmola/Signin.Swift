//
//  ViewController.swift
//  Sign-in
//
//  Created by Cynoteck6 on 3/3/21.
//  Copyright © 2021 Cynoteck6. All rights reserved.
//

import UIKit

class MainVC: UIViewController{
    
    
    @IBOutlet var submitBtn: UIButton!
    
    @IBOutlet var nameTxt      : UITextField!
    @IBOutlet var emailTxt     : UITextField!
    @IBOutlet var phnTxt       : UITextField!
    @IBOutlet var usernameTxt  : UITextField!
    @IBOutlet var passwordTxt  : UITextField!
    @IBOutlet var confirmPwdTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callForStyling()
    }
    
    //Styling all the widgets for first appearance
    func callForStyling(){
        let stylingWidgetsObject = stylingWidgets()
        
        //Styling  Button
        stylingWidgetsObject.styleButtons(Button:submitBtn)
        
        //Styling  Text fields
        stylingWidgetsObject.styleTextFields(TxtField: nameTxt      ,placeholder:"Name")
        stylingWidgetsObject.styleTextFields(TxtField: emailTxt     ,placeholder:"Email Id")
        stylingWidgetsObject.styleTextFields(TxtField: phnTxt       ,placeholder:"Phone no.")
        stylingWidgetsObject.styleTextFields(TxtField: usernameTxt  ,placeholder:"Username")
        stylingWidgetsObject.styleTextFields(TxtField: passwordTxt  ,placeholder:"Password")
        stylingWidgetsObject.styleTextFields(TxtField: confirmPwdTxt,placeholder:"Confirm Password")
    }

    @IBAction func submitBtn(_ sender: Any) {
        let validateObject = validateWidgets()
        let stylingWidgetsObject = stylingWidgets()
        
        
        // *******  validating name *************
        if validateObject.checkName(name: nameTxt.text!){
            stylingWidgetsObject.reStyleTextFields(TxtField: nameTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: nameTxt)
            showAlert(alertMessage: "Name not appropriate.")
        }
        
        // *******  validating email *************
        if validateObject.checkEmail(email: emailTxt.text!) {
            stylingWidgetsObject.reStyleTextFields(TxtField: emailTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: emailTxt)
            showAlert(alertMessage: "Email not appropriate.")
        }
        
        // *******  validating phone no *************
        if validateObject.checkPhno(phone: phnTxt.text!) {
            stylingWidgetsObject.reStyleTextFields(TxtField: phnTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: phnTxt)
            showAlert(alertMessage: "Phone no. not appropriate.")
        }
        
        // *******  validating username *************
        if validateObject.checkUsername(username: usernameTxt.text!) {
            stylingWidgetsObject.reStyleTextFields(TxtField: usernameTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: usernameTxt)
            showAlert(alertMessage: "Enter a username.")
        }
        
        // *******  validating password *************
        if validateObject.checkPassword(password: passwordTxt.text!) {
            stylingWidgetsObject.reStyleTextFields(TxtField: passwordTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: passwordTxt)
            showAlert(alertMessage: "Enter a password.")
        }
        
        // *******  validating confirmPassword *************
        if validateObject.confirmPassword(password: passwordTxt.text!,confirmPassword: confirmPwdTxt.text!) {
            stylingWidgetsObject.reStyleTextFields(TxtField: confirmPwdTxt)
        }
        else{
            stylingWidgetsObject.styleIncorrectInputFields(TxtField: confirmPwdTxt)
            showAlert(alertMessage: "Password not confirmed. Values miss match.")
        }
    }

    func showAlert(alertMessage:String){
        let alert = UIAlertController(title: "Invalid Entry", message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}

