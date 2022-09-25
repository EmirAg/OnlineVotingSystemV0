//
//  DropMenuBtnView.swift
//  VotingOnlineSystem0
//
//  Created by AmeerAG on 23/09/2022.
//

import UIKit
@IBDesignable

class DropDownMenuBtn: UIButton {

    override func draw(_ rect: CGRect) { // (ˇ) DRAW
        let size = 14
        let downImg = UIImageView(frame: CGRect(x: CGFloat(frame.size.width)-30, y: CGFloat((Int((frame.size.height))/2) - size/2 + 3), width: CGFloat(size), height: CGFloat(Double(size)-5)))
        downImg.backgroundColor = .white.withAlphaComponent(0.0)
        downImg.clipsToBounds = true
        downImg.image = UIImage(systemName: "chevron.down")
        addSubview(downImg)
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }

    func customizeView(){
        tintColor = .darkGray
        layer.cornerRadius = 15
        clipsToBounds = true
    }
    
}
