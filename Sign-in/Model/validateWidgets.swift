//
//  validateWidgets.swift
//  Sign-in
//
//  Created by Cynoteck6 on 3/4/21.
//  Copyright © 2021 Cynoteck6. All rights reserved.
//

import Foundation

struct signinData {
    let name           :String
    let email          :String
    let phoneNo        :String
    let username       :String
    let password       :String
    let confirmPassword:String
}

class validateWidgets {
    func checkName(name:String) -> Bool{
        if((name.range(of: "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$", options: .regularExpression, range: nil, locale: nil)) != nil){
            return true
        }
        else {
            return false
        }
    }
    
    func checkEmail(email:String) -> Bool{
        if((email.range(of: "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}", options: .regularExpression, range: nil, locale: nil)) != nil){
            return true
        }
        else {
            return false
        }
    }
    
    func checkPhno(phone:String) -> Bool{
        if((phone.range(of: "^[7-9][0-9]{9}$", options: .regularExpression, range: nil, locale: nil)) != nil){
            return true
        }
        else {
            return false
        }
    }
    func checkUsername(username:String) -> Bool{
        if(username.count != 0){
            return true
        }
        else {
            return false
        }
    }
    
    func checkPassword(password:String) -> Bool{
        if(password.count != 0){
            return true
        }
        else {
            return false
        }
    }
    
    func confirmPassword(password:String , confirmPassword:String) -> Bool{
        if(password == confirmPassword){
            return true
        }
        else {
            return false
        }
    }
}
