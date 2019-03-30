//
//  AdvancedComponentRecipe.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

struct AdvancedComponentRecipe:Decodable, RunCalculator{

    let input: [AdvancedComponentRecipeInput]
    let output:AdvancedComponent
    let outputQuantity:Int = ADVANCED_COMPONENT_BASE_OUTPUT_QUANTITY
    
    //Calculations
    var requestedAmount:Int? = 0
}

struct AdvancedComponentRecipeInput:Decodable{
    let material:AdvancedMoonMaterial
    let quantity:Int
}
