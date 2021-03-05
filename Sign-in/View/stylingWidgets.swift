//
//  stylingWidgets.swift
//  Sign-in
//
//  Created by Cynoteck6 on 3/4/21.
//  Copyright © 2021 Cynoteck6. All rights reserved.
//

import UIKit

class stylingWidgets {
    
    func styleButtons(Button:UIButton){
        Button.layer.cornerRadius = 5
        Button.layer.borderWidth = 3
        Button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func styleTextFields(TxtField:UITextField,placeholder:String){
        TxtField.layer.borderWidth = 1
        TxtField.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        TxtField.layer.cornerRadius = 5
        TxtField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    func reStyleTextFields(TxtField:UITextField){
        TxtField.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    func styleIncorrectInputFields(TxtField:UITextField){
        TxtField.layer.borderColor = #colorLiteral(red: 0.8377025701, green: 0.06586652281, blue: 0.06060366929, alpha: 1)
    }
}
