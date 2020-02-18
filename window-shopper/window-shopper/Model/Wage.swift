//
//  Wage.swift
//  window-shopper
//
//  Created by Fragoso, Hector on 2/17/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int? {
        if wage <= 0 || price < 0 {
            return nil
        }
        return Int(ceil(price/wage))
    }
}
