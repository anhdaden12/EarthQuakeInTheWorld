//
//  Custom Label.swift
//  EarthQuakeInTheWorld
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//


import UIKit

@IBDesignable
class CustomLabel: UILabel {
    @IBInspectable
    private var cornerRadius: CGFloat = 0.0 {
        didSet {
            setLayout()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setLayout()
    }
    
    func setLayout() {
        if cornerRadius == -1 {
            layer.cornerRadius = frame.height*0.5
        } else {
            layer.cornerRadius = cornerRadius
        }
    }
    
}
