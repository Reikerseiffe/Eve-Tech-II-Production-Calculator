//
//  JSONImporter.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation


class JSONImporter{
    
    
    
    
    static func importAllRecipies(){
        self.importProcessedMoonMaterials()
        self.importAdvancedMoonMaterials()
        self.importAdvancedComponents()
    }
    
    static func genericJSONImporter<T>(fromPath path:String, withModel modelType: T.Type) -> T? where T : Decodable{
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            guard let recipies = try? JSONDecoder().decode(modelType, from: data) else {
                print("Error: Couldn't decode data into Processed Moon Materials")
                return nil
            }
            return recipies
        } catch {
            print("Unable to get contents of file and transfor to Data")
            return nil
        }
        
    }
    
    static func importProcessedMoonMaterials() -> [ProcessedMoonMaterialReaction]{
        //Get path for processed moon materials
        guard let path = Bundle.main.path(forResource: "ProcessedMoonMaterialReactions", ofType: "json") else {
            print("Not able to find JSON File")
            return []
        }
        
        if let processedMoonMaterialRecipies = genericJSONImporter(fromPath: path, withModel: [ProcessedMoonMaterialReaction].self){
            print(processedMoonMaterialRecipies)
            return processedMoonMaterialRecipies
        }
        return []
    }
    
    static func importAdvancedMoonMaterials() -> [AdvancedMoonMaterialReaction]{
        //Get path for advanced moon materials
        guard let path = Bundle.main.path(forResource: "AdvancedMoonMaterialReactions", ofType: "json") else {
            print("Not able to find JSON File")
            return []
        }
        
        if let advancedMoonMaterialRecipies = genericJSONImporter(fromPath: path, withModel: [AdvancedMoonMaterialReaction].self){
            print(advancedMoonMaterialRecipies)
            return advancedMoonMaterialRecipies
        }
        return []
    }
    
    static func importAdvancedComponents() -> [AdvancedComponentRecipe]{
        //Get path for advanced components
        guard let path = Bundle.main.path(forResource: "AdvancedComponentsRecipies", ofType: "json") else {
            print("Not able to find JSON File")
            return []
        }
        
        if let advancedComponentRecipes = genericJSONImporter(fromPath: path, withModel: [AdvancedComponentRecipe].self){
            print(advancedComponentRecipes)
            return advancedComponentRecipes
        }
        return []
    }
}
