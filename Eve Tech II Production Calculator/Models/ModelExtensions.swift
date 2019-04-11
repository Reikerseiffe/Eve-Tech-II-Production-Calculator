//
//  ModelExtensions.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/30/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation


protocol RunCalculator{
    var outputQuantity:Int {get}
    var requestedAmount:Int? {get set}
    
    func calculateRunsNeeded() -> Int
}

extension RunCalculator{
    func calculateRunsNeeded() -> Int{
        return requestedAmount ?? 0/outputQuantity
    }
}
