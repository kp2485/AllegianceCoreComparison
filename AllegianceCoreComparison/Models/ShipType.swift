//
//  ShipType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ShipType: Identifiable, CSVParsable {
    let id: String
    let mass: String
    let signature: String
    let speed: String
    let maxTurnRates: String
    let turnTorques: String
    let thrust: String
    let sideMultiplier: String
    let backMultiplier: String
    let scannerRange: String
    let maxFuel: String
    let ecm: String
    let length: String
    let maxEnergy: String
    let rechargeRate: String
    let ripSpeed: String
    let ripCost: String
    let maxAmmo: String
    let successorHullID: String
    let maxWeapons: String
    let maxFixedWeapons: String
    let hitPoints: String
    let defenseConstantID: String
    let magazineCapacity: String
    let dispenserCapacity: String
    let chaffLauncherCapacity: String
    let preferredPartTypes: String
    let abilities: String
    let textureName: String
    let allowedChaff: String
    let allowedMissiles: String
    let allowedDispensers: String
    let allowedShields: String
    let allowedCloaks: String
    let allowedBoosters: String
    let price: String
    let timeToBuild: String
    let modelName: String
    let iconName: String
    let name: String
    let description: String
    let group: String
    let techRequired: String
    let techEffect: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 44 else {
            print("Failed to parse row: \(csvRow)")
            return nil
        }
        
        self.id = csvRow[0]
        self.mass = csvRow[1]
        self.signature = csvRow[2]
        self.speed = csvRow[3]
        self.maxTurnRates = csvRow[4]
        self.turnTorques = csvRow[5]
        self.thrust = csvRow[6]
        self.sideMultiplier = csvRow[7]
        self.backMultiplier = csvRow[8]
        self.scannerRange = csvRow[9]
        self.maxFuel = csvRow[10]
        self.ecm = csvRow[11]
        self.length = csvRow[12]
        self.maxEnergy = csvRow[13]
        self.rechargeRate = csvRow[14]
        self.ripSpeed = csvRow[15]
        self.ripCost = csvRow[16]
        self.maxAmmo = csvRow[17]
        self.successorHullID = csvRow[18]
        self.maxWeapons = csvRow[19]
        self.maxFixedWeapons = csvRow[20]
        self.hitPoints = csvRow[21]
        self.defenseConstantID = csvRow[22]
        self.magazineCapacity = csvRow[23]
        self.dispenserCapacity = csvRow[24]
        self.chaffLauncherCapacity = csvRow[25]
        self.preferredPartTypes = csvRow[26]
        self.abilities = csvRow[27]
        self.textureName = csvRow[28]
        self.allowedChaff = csvRow[29]
        self.allowedMissiles = csvRow[30]
        self.allowedDispensers = csvRow[31]
        self.allowedShields = csvRow[32]
        self.allowedCloaks = csvRow[33]
        self.allowedBoosters = csvRow[34]
        self.price = csvRow[35]
        self.timeToBuild = csvRow[36]
        self.modelName = csvRow[37]
        self.iconName = csvRow[38]
        self.name = csvRow[39]
        self.description = csvRow[40]
        self.group = csvRow[41]
        self.techRequired = csvRow[42]
        self.techEffect = csvRow[43]
    }
}
