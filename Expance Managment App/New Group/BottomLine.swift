//
//  BottomLine.swift
//  Expance Managment App
//
//  Created by Nilrajsinh Vaghela on 06/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class BottomLine: UITextField {

    func SetBottomBorder() {
        // craete layer
        let BottomLine = CALayer()
        
        BottomLine.frame = CGRect.init(x: 0.0, y: self.frame.height-1, width: self.frame.width, height: 1.0)
        BottomLine.backgroundColor = UIColor.black.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.sublayers?.removeAll()
        self.layer.addSublayer(BottomLine)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        SetBottomBorder()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        SetBottomBorder()
        
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        SetBottomBorder()
    }
    

}
