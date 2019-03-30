//
//  RawMoonMaterial.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

enum RawMoonMaterial:String, Codable, CaseIterable{
    //R4
    case silicates = "Silicates"
    case evaporiteDeposits = "Evaporite Deposits"
    case hydrocarbons = "Hydrocarbons"
    case atmosphericGases = "Atmospheric Gases"
    
    //R8
    case cobalt = "Cobalt"
    case scandium = "Scandium"
    case tungsten = "Tungsten"
    case titanium = "Titanium"
    
    //R16
    case chromium = "Chromium"
    case cadmium = "Cadmium"
    case platinum = "Platinum"
    case vanadium = "Vanadium"
    
    //R32
    case technetium = "Technetium"
    case mercury = "Mercury"
    case caesium = "Caesium"
    case hafnium = "Hafnium"
    
    //R64
    case promethium = "Promethium"
    case neodymium = "Neodymium"
    case dysprosium = "Dysprosium"
    case thulium = "Thulium"
}
