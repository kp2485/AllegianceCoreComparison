//
//  ExpendableMine.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ExpendableMine: Identifiable, CSVParsable {
    let id: Int
    let mineRadius: Double
    let power: Int
    let endurance: Int
    let damageConstantID: String
    let loadTime: Int
    let lifeSpan: Int
    let signature: Double
    let hitPoints: Int
    let defenseConstantID: String
    let abilities: String
    let iconName: String
    let colorRGBA: String
    let radius: Double
    let rotation: Int
    let modelName: String
    let textureName: String
    let launcherSignature: Double
    let mass: Double
    let partMask: Int
    let expendableSize: Int
    let copyOfName: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 22,
              let id = Int(csvRow[0]),
              let mineRadius = Double(csvRow[1]),
              let power = Int(csvRow[2]),
              let endurance = Int(csvRow[3]),
              let loadTime = Int(csvRow[5]),
              let lifeSpan = Int(csvRow[6]),
              let signature = Double(csvRow[7]),
              let hitPoints = Int(csvRow[8]),
              let radius = Double(csvRow[13]),
              let rotation = Int(csvRow[14]),
              let launcherSignature = Double(csvRow[17]),
              let mass = Double(csvRow[18]),
              let partMask = Int(csvRow[19]),
              let expendableSize = Int(csvRow[20])
        else {
            return nil
        }

        self.id = id
        self.mineRadius = mineRadius
        self.power = power
        self.endurance = endurance
        self.damageConstantID = csvRow[4].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "N/A" : csvRow[4]
        self.loadTime = loadTime
        self.lifeSpan = lifeSpan
        self.signature = signature
        self.hitPoints = hitPoints
        self.defenseConstantID = csvRow[9].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "N/A" : csvRow[9]
        self.abilities = csvRow[10].trimmingCharacters(in: .whitespacesAndNewlines)
        self.iconName = csvRow[11].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[11]
        self.colorRGBA = csvRow[12].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "0 0 0 0" : csvRow[12]
        self.radius = radius
        self.rotation = rotation
        self.modelName = csvRow[15].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[15]
        self.textureName = csvRow[16].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[16]
        self.launcherSignature = launcherSignature
        self.mass = mass
        self.partMask = partMask
        self.expendableSize = expendableSize
        self.copyOfName = csvRow[21].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "N/A" : csvRow[21]
    }
}
