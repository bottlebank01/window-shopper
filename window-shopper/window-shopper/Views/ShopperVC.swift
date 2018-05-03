//
//  ViewController.swift
//  window-shopper
//
//  Created by Keith Smith on 03/05/2018.
//  Copyright © 2018 Slooks Ltd. All rights reserved.
//

import UIKit

class ShopperVC: UIViewController {

    @IBOutlet weak var wageTxt: shopperTxt!
    @IBOutlet weak var priceTxt: shopperTxt!
    @IBOutlet weak var resultLbl: UILabel!
    //@IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton( frame: CGRect( x: 0, y: 0, width: view.frame.size.width, height: 60 ))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.7129242466, blue: 0.1937421215, alpha: 1)
        calcBtn.setTitle( "Calculate", for: .normal )
        calcBtn.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal )
        calcBtn.addTarget( self, action: #selector( ShopperVC.calculate ), for: .touchUpInside )
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn

        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double( wageTxt ), let price = Double( priceTxt ) {
                view.endEditing( true )
                resultLbl.isHidden = false
                hoursLbl.isHidden = false

                resultLbl.text = "\( Wage.getHours(forWage: wage, andPrice: price ))"
            }
        }
        
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

