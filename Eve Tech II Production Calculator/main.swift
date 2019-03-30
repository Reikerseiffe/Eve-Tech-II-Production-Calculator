//
//  main.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

print("Hello, New Eden!")

let processedMoonMaterialRecipes = JSONImporter.importProcessedMoonMaterials()
let advancedMoonMaterialRecipes = JSONImporter.importAdvancedMoonMaterials()
let advancedComponentsRecipes = JSONImporter.importAdvancedComponents()

//Grab file for example ()


let requestedMaterials = JSONImporter.importrequestedComponents()


MaterialCalculator.filterRecipes(withMaterials: requestedMaterials)
print(MaterialCalculator.components)
