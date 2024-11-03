//
//  DroneType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct DroneType: Identifiable, CSVParsable {
    let id: Int
    let shootSkill: Double
    let moveSkill: Double
    let bravery: Double
    let pilotType: Int
    let hullTypeId: Int
    let expendableTypeId: Int
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
        guard csvRow.count >= 16,
              let id = Int(csvRow[0]),
              let shootSkill = Double(csvRow[1]),
              let moveSkill = Double(csvRow[2]),
              let bravery = Double(csvRow[3]),
              let pilotType = Int(csvRow[4]),
              let hullTypeId = Int(csvRow[5]),
              let expendableTypeId = Int(csvRow[6]),
              let price = Int(csvRow[7]),
              let timeToBuild = Int(csvRow[8]),
              let group = Int(csvRow[13]) else {
            print("Failed to parse CSV row: \(csvRow)")
            return nil
        }

        self.id = id
        self.shootSkill = shootSkill
        self.moveSkill = moveSkill
        self.bravery = bravery
        self.pilotType = pilotType
        self.hullTypeId = hullTypeId
        self.expendableTypeId = expendableTypeId
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[9]
        self.iconName = csvRow[10]
        self.name = csvRow[11]
        self.description = csvRow[12]
        self.group = group
        self.techRequired = csvRow[14]
        self.techEffect = csvRow[15]
    }
}

