//
//  RequestedMaterial.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/30/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

struct RequestedMaterial: Decodable{
    var material:String
    var quantity:Int
}
