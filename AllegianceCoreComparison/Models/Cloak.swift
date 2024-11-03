//
//  Cloak.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Cloak: Identifiable, CSVParsable {
    let id: Int
    let energyConsumption: Double
    let maxCloaking: Double
    let powerOnRate: Double
    let powerOffRate: Double
    let engageSfxID: Int
    let disengageSfxID: Int
    let mass: Int
    let signature: Double
    let successorPartID: Int
    let partMask: Int
    let inventoryModel: String
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
        guard csvRow.count >= 21,
              let id = Int(csvRow[0]),
              let energyConsumption = Double(csvRow[1]),
              let maxCloaking = Double(csvRow[2]),
              let powerOnRate = Double(csvRow[3]),
              let powerOffRate = Double(csvRow[4]),
              let engageSfxID = Int(csvRow[5]),
              let disengageSfxID = Int(csvRow[6]),
              let mass = Int(csvRow[7]),
              let signature = Double(csvRow[8]),
              let successorPartID = Int(csvRow[9]),
              let partMask = Int(csvRow[10]),
              let price = Int(csvRow[12]),
              let timeToBuild = Int(csvRow[13]),
              let group = Int(csvRow[18]) else {
            return nil
        }

        self.id = id
        self.energyConsumption = energyConsumption
        self.maxCloaking = maxCloaking
        self.powerOnRate = powerOnRate
        self.powerOffRate = powerOffRate
        self.engageSfxID = engageSfxID
        self.disengageSfxID = disengageSfxID
        self.mass = mass
        self.signature = signature
        self.successorPartID = successorPartID
        self.partMask = partMask
        self.inventoryModel = csvRow[11]
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[14]
        self.iconName = csvRow[15]
        self.name = csvRow[16]
        self.description = csvRow[17]
        self.group = group
        self.techRequired = csvRow[19]
        self.techEffect = csvRow[20]
    }
}

