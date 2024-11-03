//
//  ShipType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ShipType: Identifiable, CSVParsable {
    let id: Int
    let mass: Double
    let signature: Double
    let speed: Int
    let maxTurnRates: [Double]
    let turnTorques: [Double]
    let thrust: Int
    let sideMultiplier: Double
    let backMultiplier: Double
    let scannerRange: Int
    let maxFuel: Int
    let ecm: Int
    let length: Double
    let maxEnergy: Int
    let rechargeRate: Int
    let ripSpeed: Int
    let ripCost: Int
    let maxAmmo: Int
    let successorHullID: Int
    let maxWeapons: Int
    let maxFixedWeapons: Int
    let hitPoints: Int
    let defenseConstantID: String
    let magazineCapacity: Int
    let dispenserCapacity: Int
    let chaffLauncherCapacity: Int
    let preferredPartTypes: [Int]
    let abilities: [String]
    let textureName: String
    let allowedChaff: Int
    let allowedMissiles: Int
    let allowedDispensers: Int
    let allowedShields: Int
    let allowedCloaks: Int
    let allowedBoosters: Int
    let price: Int
    let timeToBuild: Int
    let modelName: String
    let iconName: String
    let name: String
    let description: String
    let group: Int
    let techRequired: String
    let techEffect: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 46,
              let id = Int(csvRow[0]),
              let mass = Double(csvRow[1]),
              let signature = Double(csvRow[2]),
              let speed = Int(csvRow[3]),
              let thrust = Int(csvRow[6]),
              let sideMultiplier = Double(csvRow[7]),
              let backMultiplier = Double(csvRow[8]),
              let scannerRange = Int(csvRow[9]),
              let maxFuel = Int(csvRow[10]),
              let ecm = Int(csvRow[11]),
              let length = Double(csvRow[12]),
              let maxEnergy = Int(csvRow[13]),
              let rechargeRate = Int(csvRow[14]),
              let ripSpeed = Int(csvRow[15]),
              let ripCost = Int(csvRow[16]),
              let maxAmmo = Int(csvRow[17]),
              let successorHullID = Int(csvRow[18]),
              let maxWeapons = Int(csvRow[19]),
              let maxFixedWeapons = Int(csvRow[20]),
              let hitPoints = Int(csvRow[21]),
              let magazineCapacity = Int(csvRow[23]),
              let dispenserCapacity = Int(csvRow[24]),
              let chaffLauncherCapacity = Int(csvRow[25]),
              let allowedChaff = Int(csvRow[30]),
              let allowedMissiles = Int(csvRow[31]),
              let allowedDispensers = Int(csvRow[32]),
              let allowedShields = Int(csvRow[33]),
              let allowedCloaks = Int(csvRow[34]),
              let allowedBoosters = Int(csvRow[35]),
              let price = Int(csvRow[36]),
              let timeToBuild = Int(csvRow[37]),
              let group = Int(csvRow[44])
        else {
            print("Invalid data types in CSV row: \(csvRow)")
            return nil
        }

        self.id = id
        self.mass = mass
        self.signature = signature
        self.speed = speed
        self.maxTurnRates = csvRow[4].split(separator: " ").compactMap { Double($0) }
        self.turnTorques = csvRow[5].split(separator: " ").compactMap { Double($0) }
        self.thrust = thrust
        self.sideMultiplier = sideMultiplier
        self.backMultiplier = backMultiplier
        self.scannerRange = scannerRange
        self.maxFuel = maxFuel
        self.ecm = ecm
        self.length = length
        self.maxEnergy = maxEnergy
        self.rechargeRate = rechargeRate
        self.ripSpeed = ripSpeed
        self.ripCost = ripCost
        self.maxAmmo = maxAmmo
        self.successorHullID = successorHullID
        self.maxWeapons = maxWeapons
        self.maxFixedWeapons = maxFixedWeapons
        self.hitPoints = hitPoints
        self.defenseConstantID = csvRow[22]
        self.magazineCapacity = magazineCapacity    
        self.dispenserCapacity = dispenserCapacity
        self.chaffLauncherCapacity = chaffLauncherCapacity
        self.preferredPartTypes = csvRow[26].split(separator: " ").compactMap { Int($0) }
        self.abilities = csvRow[27].split(separator: " ").map { String($0) }
        self.textureName = csvRow[28]
        self.allowedChaff = allowedChaff
        self.allowedMissiles = allowedMissiles
        self.allowedDispensers = allowedDispensers
        self.allowedShields = allowedShields
        self.allowedCloaks = allowedCloaks
        self.allowedBoosters = allowedBoosters
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[38]
        self.iconName = csvRow[39]
        self.name = csvRow[40]
        self.description = csvRow[41]
        self.group = group
        self.techRequired = csvRow[42]
        self.techEffect = csvRow[43]
    }
}
