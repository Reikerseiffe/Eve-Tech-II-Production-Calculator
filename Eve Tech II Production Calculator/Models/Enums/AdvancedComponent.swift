//
//  AdvancedComponent.swift
//  Eve Tech II Production Calculator
//
//  Created by Reiker Seiffe on 3/24/19.
//  Copyright © 2019 reikerseiffe.com. All rights reserved.
//

import Foundation

enum AdvancedComponent: String, Decodable{
    //Amarr
    case antimatterReactorUnit = "Antimatter Reactor Unit"
    case emPulseGenerator = "EM Pulse Generator"
    case fusionThruster = "Fusion Thruster"
    case laserFocusingCrystals = "Laser Focusing Crystals"
    case linearShieldEmitter = "Linear Shield Emitter"
    case nanoelectricalMicroprocessor = "Nanoelectrical Microprocessor"
    case radarSensorCluster = "Radar Sensor Cluster"
    case tesseractCapacitorUnit = "Tesseract Capacitor Unit"
    case tungstenCarbideArmorPlate = "Tungsten Carbide Armor Plate"
    
    //Caldari
    case gravimetricSensorCluster = "Gravimetric Sensor Cluster"
    case gravitonPulseGenerator = "Graviton Pulse Generator"
    case gravitonReactorUnit = "Graviton Reactor Unit"
    case magpulseThruster = "Magpulse Thruster"
    case quantumMicroprocessor = "Quantum Microprocessor"
    case scalarCapacitorUnit = "Scalar Capacitor Unit"
    case superconductorRails = "Superconductor Rails"
    case sustainedShieldEmitter = "Sustained Shield Emitter"
    case titaniumDiboriteArmorPlate = "Titanium Diborite Armor Plate"
    
    //Gallente
    case crystallineCarbonideArmorPlate = "Crystalline Carbonide Armor Plate"
    case fusionReactorUnit = "Fusion Reactor Unit"
    case ionThruster = "Ion Thruster"
    case magnetometricSensorCluster = "Magnetometric Sensor Cluster"
    case oscillatorCapacitorUnit = "Oscillator Capacitor Unit"
    case particleAcceleratorUnit = "Particle Accelerator Unit"
    case photonMicroprocessor = "Photon Microprocessor"
    case plasmaPulseGenerator = "Plasma Pulse Generator"
    case pulseShieldEmitter = "Pulse Shield Emitter"
    
    //Minmatar
    case deflectionShieldEmitter = "Deflection Shield Emitter"
    case electrolyticCapacitorUnit = "Electrolytic Capacitor Unit"
    case ferniteCarbideCompositeArmorUnit = "Fernite Carbide Composite Armor Unit"
    case ladarSensorCluster = "Ladar Sensor Cluster"
    case nanomechanicalMicroprocessor = "Nanomechanical Microprocessor"
    case nuclearPulseGenerator = "Nuclear Pulse Generator"
    case nuclearReactorUnit = "Nuclear Reactor Unit"
    case plasmaThruster = "Plasma Thruster"
    case ThermonuclearTriggerUnit = "Thermonuclear Trigger Unit"
}
