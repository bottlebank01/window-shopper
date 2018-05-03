//
//  Wage.swift
//  window-shopper
//
//  Created by Keith Smith on 03/05/2018.
//  Copyright © 2018 Slooks Ltd. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours( forWage wage: Double, andPrice price: Double ) -> Int {
        return Int( ceil( price / wage ))
    }
}
