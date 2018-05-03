//
//  shopperTxt.swift
//  window-shopper
//
//  Created by Keith Smith on 03/05/2018.
//  Copyright © 2018 Slooks Ltd. All rights reserved.
//

import UIKit


@IBDesignable
class shopperTxt: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        self.layer.cornerRadius = 16.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2456656678)
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString( string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
}
