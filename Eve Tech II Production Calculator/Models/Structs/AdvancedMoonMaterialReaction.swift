//
//  AdvancedMoonMaterialReaction.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

struct AdvancedMoonMaterialReaction:Decodable, RunCalculator{
    let input: [ProcessedMoonMaterial]
    let inputQuantity:Int = PROCESSED_MOON_MATERIAL_BASE_INPUT_QUANTITY
    let fuelBlocks:FuelBlock
    let fuelBlockQuantity:Int = REACTION_FUEL_BLOCK_INPUT_QUANTITY
    let output:AdvancedMoonMaterial
    let outputQuantity:Int
    
    //Calculations
    var requestedAmount:Int? = 0
}
