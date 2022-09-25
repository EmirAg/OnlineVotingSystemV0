//
//  LoginTxtField.swift
//  VotingOnlineSystem0
//
//  Created by AmeerAG on 21/09/2022.
//

import UIKit
@IBDesignable

class LoginTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
        setPadding()
        setButtomBorder()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        setPadding()
        setButtomBorder()
    }
    
    func customizeView(){
        backgroundColor = .white
        textAlignment = .left
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.lightGray])
            attributedPlaceholder = place
            textColor = UIColor.black
        }
        
    }

    func setPadding(){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        leftView = paddingView
        leftViewMode = .always
    }
    
    func setButtomBorder(){
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 0.0
    }

}
