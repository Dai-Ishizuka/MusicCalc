//
//  ButtonCustom.swift
//  MusicCalc
//
//  Created by 石塚大 on 2019/04/04.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit

class ButtonCustom: UIButton {
    @IBInspectable var textColor: UIColor?
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

}
