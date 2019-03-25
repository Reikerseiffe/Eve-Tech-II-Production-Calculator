//
//  AdvancedComponentRecipe.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

struct AdvancedComponentRecipe:Decodable{
    let input: [AdvancedComponentRecipeInput]
    let inputQuantity:Int
    let output:AdvancedComponent
    let outputQuantity:Int
}

struct AdvancedComponentRecipeInput:Decodable{
    let material:AdvancedMoonMaterial
    let quantity:Int
}
