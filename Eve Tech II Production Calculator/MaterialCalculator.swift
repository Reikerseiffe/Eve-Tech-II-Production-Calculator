//
//  MaterialCalculator.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/29/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation


class MaterialCalculator{
    //Would recieve a JSON array of conponents and materials needed from the frontend
    //Assumption: front end has knowledge of type sets (Raw, process, advanced, components)
    
    static var components = [AdvancedComponentRecipe]()
    static var advancedMoonMaterials = [AdvancedMoonMaterialReaction]()
    static var processedMoonMaterials = [ProcessedMoonMaterialReaction]()
    static var rawMoonMaterials = [RawMoonMaterialsRequired]()
    
    static func filterRecipes(withMaterials requestedMaterials:[RequestedMaterial]){
        //Decode strings into correct types and return arrays
        for item in requestedMaterials{
            decodeRequestedItem(item)
        }
        
        calculateBaseMaterials(of: components)
        
    }
    
    //This function decodes the requested Items from the front end and will add them to array to be calulated
    //This function does not calculated needed materials
    static func decodeRequestedItem(_ itemToGroup: RequestedMaterial){
        
        if let component = AdvancedComponent(rawValue: itemToGroup.material){
            //Item is a component
            
            let index = advancedComponentsRecipes.index(where:{ (item) -> Bool in
                item.output == component
            })
            
            //Set new object and add quantity
            var componentNeeded = advancedComponentsRecipes[index!]
            componentNeeded.requestedAmount = itemToGroup.quantity
            
            components.append(componentNeeded)
        }else if let advancedMaterial = AdvancedMoonMaterial(rawValue: itemToGroup.material){
            
            let index = advancedMoonMaterialRecipes.index(where:{ (item) -> Bool in
                item.output == advancedMaterial
            })
            
            //Set new object and add quantity
            var advancedMaterialNeeded = advancedMoonMaterialRecipes[index!]
            advancedMaterialNeeded.requestedAmount = itemToGroup.quantity
            
            advancedMoonMaterials.append(advancedMaterialNeeded)
        }else if let processedMaterial = ProcessedMoonMaterial(rawValue: itemToGroup.material){
            
            let index = processedMoonMaterialRecipes.index(where:{ (item) -> Bool in
                item.output == processedMaterial
            })
            
            //Set new object and add quantity
            var processedMaterialNeeded = advancedMoonMaterialRecipes[index!]
            processedMaterialNeeded.requestedAmount = itemToGroup.quantity
            
            advancedMoonMaterials.append(processedMaterialNeeded)
        }else if let moonMaterial = RawMoonMaterial(rawValue: itemToGroup.material){
    
            rawMoonMaterials.append(RawMoonMaterialsRequired(material: moonMaterial, quantity: itemToGroup.quantity))
            
        }else{
            //TODO: Handle this error somehow (should be validated on the frontend before sending)
            print("Unknown material!!!")
        }
    }
    
    
    //Takes array or a single material type and will add the base materials to the recipes array
    static func calculateBaseMaterials<T>(of requestItems:T){
        
        //TODO: This function
            
            
    }
        
        
        
        
}



//protocol Reaction{
//    var input:[] {get}
//    var inputQuantity:Int {get}
//}
