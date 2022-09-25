//
//  BtnRadius.swift
//  VotingOnlineSystem0
//
//  Created by AmeerAG on 21/09/2022.
//

import UIKit
@IBDesignable

class BtnRadius: UIButton {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        customizeView()
    }
    
    func customizeView(){
        layer.cornerRadius = 15.0
    }

}
