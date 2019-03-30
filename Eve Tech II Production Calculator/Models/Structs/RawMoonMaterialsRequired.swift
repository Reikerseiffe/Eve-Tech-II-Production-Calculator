//
//  RawMoonMaterialsRequired.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/30/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation


struct RawMoonMaterialsRequired{
    let material:RawMoonMaterial
    var quantity:Int = 0

    init(material:RawMoonMaterial, quantity:Int){
        self.material = material
        self.quantity = quantity
    }
}
