//
//  Shield.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Shield: Identifiable, CSVParsable {
    let id: String
    let regenRate: String
    let maxStrength: String
    let defenseConstantID: String
    let activateSFXID: String
    let deactivateSFXID: String
    let mass: String
    let signature: String
    let successorPartID: String
    let partMask: String
    let inventoryModel: String
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
        guard csvRow.count >= 20 else {
            print("Failed to parse row: \(csvRow)")
            return nil
        }

        self.id = csvRow[0]
        self.regenRate = csvRow[1]
        self.maxStrength = csvRow[2]
        self.defenseConstantID = csvRow[3]
        self.activateSFXID = csvRow[4]
        self.deactivateSFXID = csvRow[5]
        self.mass = csvRow[6]
        self.signature = csvRow[7]
        self.successorPartID = csvRow[8]
        self.partMask = csvRow[9]
        self.inventoryModel = csvRow[10]
        self.price = csvRow[11]
        self.timeToBuild = csvRow[12]
        self.modelName = csvRow[13]
        self.iconName = csvRow[14]
        self.name = csvRow[15]
        self.description = csvRow[16]
        self.group = csvRow[17]
        self.techRequired = csvRow[18]
        self.techEffect = csvRow[19]
    }
}

