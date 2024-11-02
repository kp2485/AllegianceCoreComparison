//
//  Afterburner.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Afterburner: Identifiable, CSVParsable {
    let id: Int
    let fuelConsumption: Double
    let maxThrust: Int
    let powerOnRate: Double
    let powerOffRate: Int
    let interiorSFXID: Int
    let exteriorSFXID: Int
    let mass: Int
    let signature: Double
    let successorPartID: Int
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
        guard csvRow.count == 21,
              let id = Int(csvRow[0]),
              let fuelConsumption = Double(csvRow[1]),
              let maxThrust = Int(csvRow[2]),
              let powerOnRate = Double(csvRow[3]),
              let powerOffRate = Int(csvRow[4]),
              let interiorSFXID = Int(csvRow[5]),
              let exteriorSFXID = Int(csvRow[6]),
              let mass = Int(csvRow[7]),
              let signature = Double(csvRow[8]),
              let successorPartID = Int(csvRow[9]),
              let price = Int(csvRow[13]),
              let timeToBuild = Int(csvRow[14]),
              let group = Int(csvRow[19]) else {
            return nil
        }

        self.id = id
        self.fuelConsumption = fuelConsumption
        self.maxThrust = maxThrust
        self.powerOnRate = powerOnRate
        self.powerOffRate = powerOffRate
        self.interiorSFXID = interiorSFXID
        self.exteriorSFXID = exteriorSFXID
        self.mass = mass
        self.signature = signature
        self.successorPartID = successorPartID
        self.inventoryModel = csvRow[10]
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[15]
        self.iconName = csvRow[16]
        self.name = csvRow[17]
        self.description = csvRow[18]
        self.group = group
        self.techRequired = csvRow[20]
        self.techEffect = csvRow[21]
    }
}
