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
    
    override func draw( _ rect: CGRect ) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect( x: 5, y: (frame.size.height / 2 ) - size / 2, width: size, height: size ))
        //currencyLbl.backgroundColor = #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 0.8023598031)
        //currencyLbl.backgroundColor = UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        currencyLbl.backgroundColor = UIColor(red: 0.5, green: 0.1, blue: 0.1, alpha: 0.5)

        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true            //very important
        
        let formatter = NumberFormatter()
        formatter.currencySymbol = "£"

        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol

        addSubview( currencyLbl )
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        self.layer.cornerRadius = 8.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2456656678)
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString( string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let formatter = NumberFormatter()
        //self.text = ( "\(formatter.locale! )" )
        formatter.currencySymbol = "£"
        self.text = ( "\(formatter.currencySymbol)" )

    }
    
    
}
