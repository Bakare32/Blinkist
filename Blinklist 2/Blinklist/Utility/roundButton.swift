//
//  roundButton.swift
//  Blinklist
//
//  Created by  Decagon on 28/07/2021.
//

import UIKit

@IBDesignable
//MARK-- CLASS
class RoundButton: UIButton {
    //MARK-- Attributes
    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 4
            }
        }
    }
    //MARK-- Method
    override  func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 4
        }
    }
}
